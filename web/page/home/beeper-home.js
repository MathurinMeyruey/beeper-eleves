import { css, html, LitElement } from "lit";
import "../../component/beep-view.js";

class BeeperHome extends LitElement {
  static properties = {
    beepList: {
      state: true,
    },
  };

  constructor() {
    super();
    this.beepList = [];
  }

  async connectedCallback() {
    super.connectedCallback();
    const response = await fetch("/api/home");
    this.beepList = await response.json();
  }

  render() {
    return html`${this.beepList.map(
      (b) => html`<beep-view beep="${JSON.stringify(b)}"></beep-view>`
    )}`;
  }
}

customElements.define("beeper-home", BeeperHome);

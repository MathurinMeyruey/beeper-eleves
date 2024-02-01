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

  async handlePostBeep(event) {
    const textareaElement = event.target;

    let content = textareaElement.value;
    content = content.slice(0, content.length - 1);

    if (event.code === "Enter" && !event.getModifierState("Shift")) {
      const response = await fetch("/api/beep", {
        method: "POST",
        headers: {
          "Content-Type": "application/json",
        },
        body: JSON.stringify({ content: content }),
      });

      textareaElement.value = "";

      const postedBepp = response.json();

      // this.beepList = [{ postedBepp }, ...this.beepList];
    }
  }

  render() {
    return html` <textarea @keyup=${this.handlePostBeep}></textarea>
      ${this.beepList.map(
        (b) => html`<beep-view beep="${JSON.stringify(b)}"></beep-view>`
      )}`;
  }
}

customElements.define("beeper-home", BeeperHome);

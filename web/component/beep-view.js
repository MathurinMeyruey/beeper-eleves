import { css, html, LitElement } from "lit";

class BeepView extends LitElement {
  static properties = {
    beep: {
      type: Object,
    },
  };

  constructor() {
    super();
    this.beep = null;
  }

  render() {
    return html`<div class="beep">
      <div class="beep-header">
        <img
          src="${this.beep.authorPicture}"
          alt="Profile picture of ${this.beep.authorName}"
          class="author-profile-picture"
        />
        <div>
          <span class="author">${this.beep.authorName}</span>
          <span class="created-at">
            &nbsp;- ${new Date(this.beep.createdAt).toLocaleString()} -&nbsp;
          </span>
          <span
            class="likes ${this.beep.liked ? "liked" : ""}"
            ${this.beep.liked ? "data-liked" : ""}
          >
            <span class="like-count"> ${this.beep.likeCount} </span>
            +
          </span>
        </div>
      </div>
      <div>${this.beep.content}</div>
    </div>`;
  }

  static styles = css`
    .beep {
      margin-bottom: 16px;
    }

    .beep-header {
      display: flex;
      align-items: center;
    }

    .author-profile-picture {
      display: block;
      height: 24px;
      width: 24px;
      border-radius: 50%;
      margin-right: 6px;
    }

    .author {
      font-weight: bold;
    }

    .created-at {
      font-style: italic;
      font-size: 14px;
    }

    .likes {
      font-size: 12px;
      cursor: pointer;
    }

    .liked {
      font-weight: bold;
    }
  `;
}

customElements.define("beep-view", BeepView);

import { Controller } from "@hotwired/stimulus";

export default class extends Controller {
  static values = {
    content: String,
  };
  /* 
    Copy method to handle copying text to clipboard
    Uses modern clipboard API with writeText
    Handles both success and error cases
  */
  connect() {
    console.log("Clipboard controller connected", this.contentValue);
  }
  async copy(event) {
    try {
      const textToCopy = this.contentValue;
      await navigator.clipboard.writeText(textToCopy);
      console.log("Text copied successfully!");
    } catch (error) {
      console.error("Failed to copy text:", error);
    }
  }
}

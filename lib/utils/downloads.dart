import 'dart:html';

void downloadFile(href) {
  AnchorElement ancherElement = AnchorElement(href: href);
  ancherElement.download = 'Resume.pdf';
  ancherElement.click();
}

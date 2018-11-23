const { execSync } = require('child_process');
const fs = require('fs');
const os = require('os');
const path = require('path');
const Handlebars = require('handlebars');
const parser = require('fast-xml-parser');
const camelcase = require('camelcase');

function downloadFile(url, filename) {
  execSync(`curl ${url} -o ${filename} -s`);
}

const savedFile = path.join(os.tmpdir(), 'boxicons.svg');
const svgUrl = 'https://raw.githubusercontent.com/atisawd/boxicons/master/static/fonts/boxicons.svg';
downloadFile(svgUrl, savedFile);

const xml = fs.readFileSync(savedFile).toString();
const json = parser.parse(xml, {
  ignoreAttributes: false,
});
const icons = json.svg.defs.font.glyph
  .filter(glyph => glyph['@_unicode'] && glyph['@_glyph-name'])
  .map(glyph => ({
    codePoint: glyph['@_unicode'].substring(3, 7),
    name: camelcase(glyph['@_glyph-name']),
  }));

const outputFile = 'boxicons_flutter.dart';
const template = Handlebars.compile(fs.readFileSync(`./${outputFile}.hbs`).toString(), { noEscape: true });

const content = template({ icons });
fs.writeFileSync(`../lib/${outputFile}`, content);
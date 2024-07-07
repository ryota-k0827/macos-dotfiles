'use strict'

// 親要素
const container = document.querySelector('.gettingStartedCategoriesContainer')
// container.style.gridTemplateAreas = `
//   ". uwu uwu uwu ."
//   ". header header header ."
//   ". left-column . right-column ."
//   ". footer footer footer ."
// `
// container.style.gridTemplateRows = 'auto auto 1fr auto'

const uwu = document.createElement('div')
uwu.className = 'uwu'
// uwu.style.gridArea = 'uwu'
// uwu.style.display = 'flex'
// uwu.style.justifyContent = 'center'
// uwu.style.alignSelf = 'end'
// uwu.style.paddingTop = '48px'
// uwu.style.paddingBottom = '24px'

const logo = document.createElement('img')
logo.src = 'https://raw.githubusercontent.com/Aikoyori/ProgrammingVTuberLogos/main/VSCode/VSCode.png'
logo.alt = 'uwu?'
logo.className = 'logo'
// logo.style.width = '400px'

uwu.appendChild(logo)

container.insertBefore(uwu, container.firstChild)

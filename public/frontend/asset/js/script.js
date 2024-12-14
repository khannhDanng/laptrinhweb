const sliderItem = document.querySelectorAll('.slider-item')
for (let index = 0; index < sliderItem.length; index++) {
    sliderItem[index].style.left = index * 100 + "%"

}

const sliderItems = document.querySelector('.slider-items')
const arrowLeft = document.querySelector('.ri-arrow-left-fill')
const arrowRight = document.querySelector('.ri-arrow-right-fill')
let i = 0
if(arrowRight != null && arrowLeft != null){
    arrowRight.addEventListener('click',()=>{
    
        if (i < sliderItem.length - 1){
            i++
            sliderMove(i)
        }
        else{
            return false
        }
    })
    arrowLeft.addEventListener('click',()=>{
        if (i <= 0){
            return false      
        }
        else{
            i--
            sliderMove(i)
        }
    })
}

function autoSlider() {
    if (i < sliderItem.length) {
        i++
        sliderMove(i)
    }
    else{
        i = 0 
    }
}
function sliderMove(i){
    sliderItems.style.left = -i*100+"%"
}
setInterval(autoSlider,3000)

//Menubar responsive
const menuBar = document.querySelector('.header-bar-icon')
const headerNav = document.querySelector('.header-nav')

menuBar.addEventListener('click',()=>{
    headerNav.classList.toggle('active')
   
})

//stiky header
window.addEventListener('scroll',()=>{
    if (scrollY>50) {
        document.querySelector('#header').classList.add('active')
    }
    else{
        document.querySelector('#header').classList.remove('active')
    }
})

//click product image detail
const imageSmaill = document.querySelectorAll('.product-images-items img')
const imageMain = document.querySelector('.main-image')
for (let index = 0; index < imageSmaill.length; index++) {
    imageSmaill[index].addEventListener('click',()=>{
        imageMain.src = imageSmaill[index].src
        for (let a = 0; a < imageSmaill.length; a++) {
            imageSmaill[a].classList.remove('active')
        }
        imageSmaill[index].classList.add('active')
    })
}

//quantity-product
const quanPlus = document.querySelectorAll('.ri-add-line')
const quanMimus = document.querySelectorAll('.ri-subtract-line')
const quanInput = document.querySelectorAll('.quantity-input')
let qty = 1
if (quanPlus != null && quanMimus != null) {
    for (let index = 0; index < quanMimus.length; index++) {
        quanPlus[index].addEventListener('click',()=>{
            inputValue = quanInput[index].value
            inputValue++
            quanInput[index].value = inputValue
           
         
        })
        quanMimus[index].addEventListener('click',()=>{
            inputValue = quanInput[index].value
            
            if (inputValue <= 1){
                return false
            }
            else{
                inputValue--
                quanInput[index].value = inputValue
            }
        })
    }
}



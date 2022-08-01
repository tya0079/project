'use strict';
function mainLiHandler(event) {
	liarray.forEach(li => li.classList.remove('selected'))

	let target = event.target
	
    while(target.classList.contains('ml') == false) {
        target = target.parentNode
        console.log()
    }
	target.classList.add('selected')					
//	const index = liarray.indexOf(event.target)				
			
}

function slide(event) {
	const wrap = document.querySelector('.swiper-wrapper')

    let num = +wrap.dataset.num
    num += 962

    if(num > 3847) {
        wrap.style.transitionDuration = 'unset'
        num = 0
    }
    else {
        wrap.style.transitionDuration = '0.5s'
    }
    wrap.dataset.num = num

    wrap.style.transform = `translateX(${-num}px)`
    console.log(`translateX(${-num}px)`)
}

function scrollToTop(event) {
	document.documentElement.scrollTop = 0
}

/* 탭 메뉴 */
function liHandler(event) {
	liarray.forEach(li => li.classList.remove('on'))
	
	event.target.classList.add('on')
	
	const index = liarray.indexOf(event.target)			

    divarray.forEach(div => div.classList.remove('on'))	
    divarray[index].classList.add('on')					
}

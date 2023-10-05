/* Menu 및 tab /Process Bar 사용법
 * (*) 주의 이 js는 Main에서 작동하는 js로 master(Tab 안)페이지는 실제로 iframe 안에있으므로 부모의 함수를 호출하게 처리해야함
 * 부모를 호출하도록 설정해둔 menu.sub.js를 참조하여 두개의 js를 수정시 둘다 수정해야한다.
 * Master(Web.master)는 menu.sub.js만 바라보고있음.
 * ========Process Bar==========
 * showProgress(); = Process bar Open
 * hideProgress(); = Process Bar Close
 * ========Menu & Tab===========
 * openMenuTarget(target) : target은 클릭한 li의 doms. 메뉴 클릭시에만 사용
 * openMenuPath(path, queryString = undefined, reload = false) : path(경로)를 통해서 tab을 킬 경우 사용 기본적으로 querystring과 reload는 안넣으면 null/false 처리 querystring은 넘길 param이므로 '?id=1234&pwd=1234' 형태로 전달 필요
 *                                                               reload = true넘길시 페이지를 querystring으로 다시 Open(reload기능);
 * openMenuKey(key, queryString = undefined, reload = false) : path와 동일하나 key를 통해서 open key값은 menu의 sid
 * closeTab(key) : key값을 통해서 Tab을 Close
 * closeTabPath(path) : path값을 통해 Tab Close
 */
document.addEventListener("DOMContentLoaded", () => {
    //Binding Arrow Event
    document.querySelector('#left-tab-move').addEventListener('click', () => {
        let _tabWrpaer = document.querySelector('#tab-inner-wraper');
        let _paddingRight = window.getComputedStyle(_tabWrpaer).getPropertyValue('padding-right').replace('px', '') * 1;
        let _widthWraper = _tabWrpaer.offsetWidth;
        //실 가로 넓이
        let _widthWarperReal = _widthWraper - _paddingRight;
        //scroll 가로 넓이
        let _widthScrollWidth = _tabWrpaer.scrollWidth;
        if (_widthWraper == _widthScrollWidth) {
            return;
        }
        //scroll 현위치
        let _scrollNow = _tabWrpaer.scrollLeft;
        _tabWrpaer.scroll({
            left: _scrollNow - 150,
            top: 0,
            behavior: 'smooth'
        })
    });

    document.querySelector('#right-tab-move').addEventListener('click', () => {
        let _tabWrpaer = document.querySelector('#tab-inner-wraper');
        let _paddingRight = window.getComputedStyle(_tabWrpaer).getPropertyValue('padding-right').replace('px', '') * 1;
        let _widthWraper = _tabWrpaer.offsetWidth;
        //실 가로 넓이
        let _widthWarperReal = _widthWraper - _paddingRight;
        //scroll 가로 넓이
        let _widthScrollWidth = _tabWrpaer.scrollWidth;
        if (_widthWraper == _widthScrollWidth) {
            return;
        }
        //scroll 현위치
        let _scrollNow = _tabWrpaer.scrollLeft;
        _tabWrpaer.scroll({
            left: _scrollNow + 150,
            top: 0,
            behavior: 'smooth'
        })
    });

    document.querySelector("iframe").addEventListener("load", function () {
        hideProgress();
    });

    //Menu Ul target
    $('.menu-main-ul > .menu-main-li').each((index, item) => {
        let _li = $(item);
        let _target = _li.find('.menu-main-div');
        let _subUl = _li.find('.menu-sub-ul');
        let _arrow = _li.find('.menu-arrow-div');

        if (_subUl != undefined && _subUl != null) {
            //Event binding
            _target.on('click', (e) => {
                if (_subUl.hasClass('sub-active')) {
                    //이미 활성화 되어있는 것이므로 닫아야함.
                    _arrow.find('span').removeClass('up-arrow');
                    _arrow.find('span').addClass('down-arrow');
                    _subUl.removeClass('sub-active');
                    _subUl.slideUp(200);
                } else {
                    _arrow.find('span').removeClass('down-arrow');
                    _arrow.find('span').addClass('up-arrow');
                    _subUl.addClass('sub-active');
                    _subUl.slideDown(200);
                }
            });
        }
    });
    //Menu 클릭 Event Binding
    document.querySelectorAll('.menuOpen').forEach((menu) => {
        menu.addEventListener('click', (e) => {
            openMenuTarget(e.currentTarget);
        });
    })
    //home은 미리 나와있으므로 EventBinding
    document.querySelector('.home-text').addEventListener('click', (e) => {
        openTab(e.currentTarget);
    });
});
/*processBar show hide*/
function showProgress() {
    document.querySelector('#drkid-process-bar').style.display = 'block';
}

function hideProgress() {
    document.querySelector('#drkid-process-bar').style.display = 'none';
}
/*Menu Click Event*/
function openMenuTarget(target) {
    let _path = target.dataset.path;
    let _queryString = target.dataset.queryString;
    let _sKey = target.dataset.subKey;
    let _title = target.dataset.title;
    //열려있는게 없는 경우
    if (document.querySelectorAll(`[data-ikey='${_sKey}']`).length == 0) {
        if (!tabValidation()) { return; }
        //processBar Open
        showProgress();
        //전체 iframe display 닫기
        document.querySelectorAll('.iframe-tab').forEach((iframe) => {
            iframe.style.display = 'none';
        });
        //active된 tab 제거
        document.querySelector('.active-tab').classList.remove('active-tab');
        let _iframe = setTemplateIframe(_path, _sKey, _queryString);
        let _tab = setTabBox(_sKey, _title);

        //tab setting
        _tab.classList.add('active-tab');
        //tab 추가
        document.querySelector('#tab-inner-wraper').appendChild(_tab);

        _iframe.addEventListener('load', () => {
            hideProgress();
        });
        //iframe 추가
        document.querySelector('#iframe-area').appendChild(_iframe);
    } else {
        //있는 경우
        openTab(target);
    }
}
function openMenuPath(path, queryString = undefined, reload = false) {
    let _path = path;
    let _targeting = document.querySelector(`[data-path="${_path}"]`);
    let _sKey = _targeting.dataset.subKey;
    let _queryString = queryString;

    let _title = _targeting.dataset.title;
    //열려있는게 없는 경우
    if (document.querySelectorAll(`[data-ikey='${_sKey}']`).length == 0) {
        if (!tabValidation()) { return; }
        //processBar Open
        showProgress();
        //전체 iframe display 닫기
        document.querySelectorAll('.iframe-tab').forEach((iframe) => {
            iframe.style.display = 'none';
        });
        //active된 tab 제거
        document.querySelector('.active-tab').classList.remove('active-tab');
        let _iframe = setTemplateIframe(_path, _sKey, _queryString);
        let _tab = setTabBox(_sKey, _title);

        //tab setting
        _tab.classList.add('active-tab');
        //tab 추가
        document.querySelector('#tab-inner-wraper').appendChild(_tab);

        _iframe.addEventListener('load', () => {
            hideProgress();
        });
        //iframe 추가
        document.querySelector('#iframe-area').appendChild(_iframe);
    } else {
        //있는 경우
        if (!reload) {
            openTab(_targeting);
        } else {
            //Reload!
            let _freameSrc = (queryString != undefined ? _path + queryString : _path);
            document.querySelector(`[data-ikey="${_sKey}"]`).src = _freameSrc;
            openTab(_targeting);
        }
    }
}
function openMenuKey(key, queryString = undefined, reload = false) {
    let _sKey = key;
    let _targeting = document.querySelector(`[data-sub-key="${_sKey}"]`);
    let _path = _targeting.dataset.path;
    let _queryString = queryString;

    let _title = _targeting.dataset.title;
    //열려있는게 없는 경우
    if (document.querySelectorAll(`[data-ikey='${_sKey}']`).length == 0) {
        if (!tabValidation()) { return; }
        //processBar Open
        showProgress();
        //전체 iframe display 닫기
        document.querySelectorAll('.iframe-tab').forEach((iframe) => {
            iframe.style.display = 'none';
        });
        //active된 tab 제거
        document.querySelector('.active-tab').classList.remove('active-tab');
        let _iframe = setTemplateIframe(_path, _sKey, _queryString);
        let _tab = setTabBox(_sKey, _title);

        //tab setting
        _tab.classList.add('active-tab');
        //tab 추가
        document.querySelector('#tab-inner-wraper').appendChild(_tab);

        _iframe.addEventListener('load', () => {
            hideProgress();
        });
        //iframe 추가
        document.querySelector('#iframe-area').appendChild(_iframe);
    } else {
        //있는 경우
        if (!reload) {
            openTab(_targeting);
        } else {
            //Reload!
            let _freameSrc = (queryString != undefined ? _path + queryString : _path);
            document.querySelector(`[data-ikey="${_sKey}"]`).src = _freameSrc;
            openTab(_targeting);
        }
    }
}
//ReLoad To Path
function Reload(path) {
    let _path = path;
    let _targeting = document.querySelector(`[data-path="${_path}"]`);
    let _sKey = _targeting.dataset.subKey;
    if (document.querySelectorAll(`[data-ikey='${_sKey}']`).length != 0) {
        document.querySelectorAll(`[data-ikey='${_sKey}']`).forEach((iframe) => {
            iframe.src += '';
        });
    }
}

//Tab 갯수 관리
function tabValidation() {
    let _returnBool = true;
    let _child = [...document.querySelector(`#tab-inner-wraper`).children];
    if (_child.length >= 10) {
        _popModal.Alert('탭 초과', '10개 이상의 탭을 활성화 할수 없습니다.');
        _returnBool = false;
    }

    return _returnBool;
}
//Iframe 생성 호출 함수
function setTemplateIframe(src, key, queryString = undefined) {
    let _iframe = document.createElement('iframe');
    _iframe.classList.add('iframe-tab');
    _iframe.setAttribute('frameborder', '0');
    _iframe.setAttribute('data-ikey', key);

    let _freameSrc = (queryString != undefined ? src + queryString : src);
    _iframe.src = _freameSrc;

    return _iframe;
}
//Tab 생성 호출 함수
function setTabBox(key, title) {
    let _tab_box = document.createElement('div');
    _tab_box.classList.add('tab-box');
    _tab_box.setAttribute('data-tab-box', key);
    _tab_box.title = title;
    _tab_box.innerHTML = `<div class="tab-text-box" data-tab-key="${key}">
                                      <span class="lower-font tab-span">${title}</span >
                                  </div>
                                  <div class="tab-box-xbtn" data-xkey="${key}">
                                      <span class="material-icons lowerst-font">close</span>
                                  </div>
                                  `;
    _tab_box.querySelector('.tab-box-xbtn').addEventListener('click', (e) => {
        closeTab(e.currentTarget.dataset.xkey);
    });
    _tab_box.querySelector('.tab-text-box').addEventListener('click', (e) => {
        openTab(e.currentTarget);
    })

    return _tab_box;
}
//Tab Open 함수
function openTab(target) {
    let _tab_key = target.dataset.tabKey || target.dataset.subKey || target.dataset.tabBox;
    //전체 iframe display 닫기
    document.querySelectorAll('.iframe-tab').forEach((iframe) => {
        iframe.style.display = 'none';
    });
    //active된 tab 제거
    document.querySelector('.active-tab').classList.remove('active-tab');
    document.querySelector(`[data-ikey="${_tab_key}"]`).style.display = 'block';
    document.querySelector(`[data-tab-box="${_tab_key}"]`).classList.add('active-tab');
}
//Tab Close 함수
function closeTab(key) {
    if (key == undefined) { return; }
    //위치 찾기
    let _child = [...document.querySelector(`#tab-inner-wraper`).children];
    let _closeTarget = document.querySelector(`#tab-inner-wraper [data-tab-box="${key}"]`);
    let _closeTargetIndex = _child.indexOf(_closeTarget);
    if (_closeTarget.classList.contains('active-tab')) {
        openTab(_child[_closeTargetIndex - 1]);
    }
    _closeTarget.remove();
    document.querySelector(`[data-ikey="${key}"]`).remove();
}
function closeTabPath(path) {
    if (path == undefined) { return; }
    //위치 찾기
    //path는 한개인것으로 가정
    let _sKey = document.querySelector(`.menu-main-ul [data-path="${path}"]`).dataset.subKey;
    let _child = [...document.querySelector(`#tab-inner-wraper`).children];
    let _closeTarget = document.querySelector(`#tab-inner-wraper [data-tab-box="${_sKey}"]`);
    let _closeTargetIndex = _child.indexOf(_closeTarget);

    if (_closeTarget.classList.contains('active-tab')) {
        openTab(_child[_closeTargetIndex - 1]);
    }
    _closeTarget.remove();
    document.querySelector(`[data-ikey="${_sKey}"]`).remove();
}
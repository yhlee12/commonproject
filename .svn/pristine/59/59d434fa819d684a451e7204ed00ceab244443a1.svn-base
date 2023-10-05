/* 팝업 사용법
 * openPopPromise(e.currentTarget, 1).then((data) => {
 *                  console.log('then!!');
 *                  console.log(data);
 *              }).catch((err) => {
 *                  console.log(err);
 *              });
 * <div class="drkid-btn search-input-btn" id="find-pop" data-class-code="A_USER" data-title="관리자 찾기" data-search-target-id="AUTH_USER" data-param='{"PARAM1":"500","PARAM2":"40"}' data-target="COMMON_POPUP_1">
 *      <span class="lower-font">찾기</span>
 * </div>
 * 버튼에 bind하는 항목 :
 * data-class-code : Class Code를 넘기기 위한 기본 data 세팅
 * data-title : popup의 title text
 * data-search-target-id : input에 검색 Text가 있을경우 해당 input의 id를 입력
 * data-param : 기본적으로 PARAM / PARAM2 가 세팅되어있으며 추가 여부에따라 세팅, jsonObject 형태로 작성
 * data-target : POPUP을 호출할 Iframe 화면 Target COMMON_POPUP_1을 참고하여 다른 형태의 팝업도 사용이 가능.
 * openPopPromise(target,zindex) : target은 Btn의 Doms를 지정 z-index는 팝업이 여러개일경우 중첩이되야 할수도 있으므로 지정, 필요에 따라 1~49사이로 넣으면됩니다.
 * .then() : 성공했을 경우의 Callback (data)에는 JsonObject 형태로 CODE_CODE / CODE_NAME / CODE_SID가 들어있음.
 * .catch() : 모종의 이유로 Error가 날경우 Binding
 */

///////Popup Open////////
function openPopPromise(target, zindex) {
    return new Promise(function (resolve, reject) {
        let _template = `
                            <div class="popUpModal">
                                <div class="pop-modal-inner">
                                    <div class="pop-modal-inner-title">
                                        <span class="big-font target-title"></span>
                                        <span class="material-icons close-pop-xbtn">close</span>
                                    </div>
                                    <div class="pop-modal-inner-content">
                                        <div class="drkid-process-bar-pop">
                                            <div class="bar-animate-div-pop"></div>
                                        </div>
                                        <iframe class="frame-pop" frameborder="0"></iframe>
                                    </div>
                                </div>
                            </div>
                            `;

        let _domsTemp = $(_template);
        let _zIndex = zindex + 50;
        _domsTemp.css('z-index', _zIndex);
        _domsTemp.prop('id', `popModal-${_zIndex}`);
        let _Target = $(target);
        let _src = _Target.data('target');
        let _title = _Target.data('title');
        let _param = _Target.data('param');
        let _classCode = _Target.data('classCode');
        let _searchText = _Target.data('searchTargetId');
        let _searchTarget;
        if (_searchText != undefined) {
            _searchTarget = $(`#${_searchText}`).val();
        } else {
            _searchTarget = undefined;
        }
        let $getParam = `?CLASS_CODE=${_classCode}`;
        if (_searchTarget != undefined) {
            $getParam = `${$getParam}&SEARCH_TEXT=${_searchTarget}`;
        }
        if (_param != undefined) {
            for (var keys in _param) {
                $getParam = `${$getParam}&${keys}=${_param[keys]}`;
            }
        }
        //Window Message Fuction을 이용한 자녀 Fuction CallBack
        var receiveMessage = (e) => {
            closePopmodal($(`#popModal-${_zIndex}`));
            resolve(e.data);
        }
        //Close Event Binding
        var closePopmodal = (target) => {
            $(target).remove();
            window.removeEventListener('message', receiveMessage, true);
        };

        let iframSrc = `/Source/client/common/${_src}.aspx${$getParam}`;
        $('body').append(_domsTemp);
        $(`#popModal-${_zIndex}`).find('.drkid-process-bar-pop').show();
        $(`#popModal-${_zIndex}`).find('.pop-modal-inner-title .target-title').text(_title);
        $(`#popModal-${_zIndex}`).find('.frame-pop').attr('src', iframSrc);
        $(`#popModal-${_zIndex}`).find('.frame-pop').on('load', function (e) {
            $(`#popModal-${_zIndex}`).find('.drkid-process-bar-pop').hide();
            resizeHeight(e.currentTarget);
        });
        $(`#popModal-${_zIndex}`).find('.close-pop-xbtn').on('click', function (e) {
            closePopmodal($(`#popModal-${_zIndex}`));
            reject(new Error('Close Data'));
        });
        $(`#popModal-${_zIndex}`).show();

        window.addEventListener('message', receiveMessage, true);
    })
}

function resizeHeight(target) {
    $(target).height('auto');
    let _constHeightMax = 500;
    let heighter = target.contentWindow.document.body.scrollHeight
    $(target).height(heighter);
    if (_constHeightMax > (heighter + 30)) {
        $(target).parents('.pop-modal-inner-content').height(heighter + 30);
    } else {
        $(target).parents('.pop-modal-inner-content').height(_constHeightMax);
    }
}
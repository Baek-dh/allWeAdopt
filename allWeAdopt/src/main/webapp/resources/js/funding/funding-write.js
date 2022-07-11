
/* 버튼 클릭시 색이 변하는 이벤트 주는 함수 */
let schedule = 0; //일정이 선택 되었는지 확인.
(function(){
      $('.fundingBtn ').click(function(e){
        const btn = e.target;
        
        if(btn.value == 'unable'){
            alert('잘못된 선택입니다( 수행된 일정 )');
            return;
        }
       if(schedule>0){
            if(confirm('선택된 일정이 있습니다 변경하시겠습니까?')){
                //existing : 기존에 선택된 변수
             const existing = document.getElementsByClassName('choiced')[0];
             existing.classList.remove('choiced');
             existing.classList.toggle('btn-outline-success');
             existing.classList.toggle('btn-secondary');
        }else{
            return;
        }
       } 

       //위에서 return 수행 안되면 수행
            btn.classList.toggle('btn-outline-success');
            btn.classList.toggle('btn-secondary');
            btn.classList.add('choiced');
            schedule = 1; 
      })
    //classList 태그 확인할려고 적은 구문
    //   const temp = document.getElementById('temp');
    //   temp.classList.toggle
})();

/* 만약 작성 버튼이 수행 시 결정된 일정 버튼에  'unable' Value가 추가되어야 한다!! */

/* 리워드칸수 추가 */
function addReward(){
    const rewardsRows= document.getElementsByClassName('rewardsRows')[0]
    
    const tr = document.createElement('tr');

    const td1 = document.createElement('td');
    td1.innerText= document.querySelectorAll('.rewardsRows>tr>td:nth-child(1)').length+1;
    tr.append(td1);
    
    for(let i=0; i<4; i++){
        const td = document.createElement('td');
        const input = document.createElement('input');
        td.append(input);
        tr.append(td);
    }
    rewardsRows.append(tr);
}


/* 썸네일 이미지 미리보기 */
// 회원 프로필 이미지 변경(미리보기)
const inputImage = document.getElementById("input-image");

if(inputImage != null){ 
    inputImage.addEventListener("change", function(){
        if(this.files[0] != undefined){
            const reader = new FileReader();
            reader.readAsDataURL(this.files[0]);
            reader.onload = function(e){ 
                const image = document.createElement('img');
                image.setAttribute("src", e.target.result);
                image.classList.add('thumbnailArea')
                document.getElementsByClassName('thumbnailArea')[0].innerHTML='';
                document.getElementsByClassName('thumbnailArea')[0].append(image);
             }

        }
    });
}




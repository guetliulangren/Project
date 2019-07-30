//获取元素
function $(str) {
	return document.querySelector(str);
}
// 使用document.execCommand()方法
function exec(aCommandName, aShowDefaultUI, aValueArgument) {
	return document.execCommand(aCommandName, aShowDefaultUI, aValueArgument);
}
//撤销动作
$('#undo').addEventListener('click', function() {
	exec('undo');
});
//选择字体
$('#fontName').addEventListener('change', function() {
	var val = this.value;
	exec('fontName', false, val);
});
//选择字体大小
$('#fontSize').addEventListener('change', function() {
	var val = this.value;
	exec('fontSize', false, val);
});
//加粗
$('#bold').addEventListener('click', function() {
	exec('bold');
});
//斜体
$('#italic').addEventListener('click', function() {
	exec('italic');
});
//加下划线
$('#underline').addEventListener('click', function() {
	exec('underline');
});




/*!
 * Based on jQuery Raty - A Star Rating Plugin - http://wbotelhos.com/raty - this function/class is.
 * ---------------------------------------------------------------------
 */
var rating_for_profile=$(function(e,t){$(".big_star_rating").raty({cancel:!1,half:!1,hintList:["I will NOT recommend","I am unlikely to recommend","OK","I might recommend","I will happily recommend to others"],size:24,starOff:"star-off-big.png",starOn:"star-on-big.png",starHalf:"star-half-big.png",start:function(){return $(this).attr("avg_rating")},click:function(e,t){return e}})}),rating_for_profile=$(function(e,t){$(".big_star_rating_direct").raty({cancel:!1,half:!1,hintList:["I will NOT recommend","I am unlikely to recommend","OK","I might recommend","I will happily recommend to others"],size:24,starOff:"star-off-big.png",starOn:"star-on-big.png",starHalf:"star-half-big.png",start:function(){return $(this).attr("avg_rating")},click:function(e,t){$.ajax({url:"/profiles/"+$(this).attr("profile_id")+"/profile_ratings/"+"0"+".js",type:"put",headers:{"X-Transaction":"PUT Stars","X-CSRF-Token":$('meta[name="csrf-token"]').attr("content")},data:{score:e}})}})});$(function(e,t){$(".big_star_rating_event").raty({cancel:!1,half:!1,hintList:["I will NOT recommend","I am unlikely to recommend","OK","I might recommend","I will happily recommend to others"],size:24,starOff:"star-off-big.png",starOn:"star-on-big.png",starHalf:"star-half-big.png",start:function(){return $(this).attr("avg_rating")},click:function(e,t){$.ajax({url:"/events/"+$(this).attr("event_id")+"/ratings/"+"0"+".js",type:"put",headers:{"X-Transaction":"PUT Stars","X-CSRF-Token":$('meta[name="csrf-token"]').attr("content")},data:{score:e}})}})}),$(".big_star_read_only").raty({cancel:!1,halfShow:!0,hintList:["I will NOT recommend","I am unlikely to recommend","OK","I might recommend","I will happily recommend to others"],size:24,starOff:"star-off-big.png",starOn:"star-on-big.png",starHalf:"star-half-big.png",start:function(){return $(this).attr("avg_rating")},readOnly:!0});
package utils;

public class BoardPage {
	public static String pagingStr(int totalCount, int pageSize, int blockPage, int pageNum, String reqUrl) {
		String pagingStr = "";
		int totalPages = (int) (Math.ceil(((double) totalCount / pageSize)));

		int pageTemp = (((pageNum - 1) / blockPage) * blockPage) + 1;
		if (pageTemp != 1) {
			pagingStr += "<a href='" + reqUrl + "?pageNum=1'>[첫 페이지]</a>";
			pagingStr += "&nbsp;";
			pagingStr += "<a href='" + reqUrl + "?pageNum=" + (pageTemp - 1) + "'>[이전 블록]</a>";
		}

		int blockCount = 1;
		while (blockCount <= blockPage && pageTemp <= totalPages) {
			if (pageTemp == pageNum) {
				pagingStr += "&nbsp;" + pageTemp + "&nbsp";
			} else {
				pagingStr += "&nbsp;<a href='" + reqUrl + "?pageNum=" + pageTemp + "'>" + pageTemp + "</a>&nbsp;";
			}
			pageTemp++;
			blockCount++;
		}

		if (pageTemp <= totalPages) {
			pagingStr += "<a href='" + reqUrl + "?pageNum=" + pageTemp + "'>[다음 블록]</a>";
			pagingStr += "&nbsp;";
			pagingStr += "<a href='" + reqUrl + "?pageNum=" + totalPages + "'>[마지막 페이지]</a>";
		}

		return pagingStr;
	}

	public static String pagingStr1(int totalCount, int pageSize, int blockPage, int pageNum, String reqUrl) {
		String pagingStr = "";
		int totalPages = (int) (Math.ceil(((double) totalCount / pageSize)));
		int num = (int)Math.ceil(blockPage/2)+1;
		int num2 = (int)Math.ceil(blockPage/2)-1;
		
		int pageTemp = (((pageNum - 1) / blockPage) * blockPage) + 1;
		if (pageTemp != 1 || pageNum >= num) {
			pagingStr += "<a href='" + reqUrl + "?pageNum=1'>[첫 페이지]</a>";
			pagingStr += "&nbsp;";
		}

		int blockCount = 1;
		if(pageNum < num) {
			while (blockCount <= blockPage && pageTemp <= totalPages) {
				if (pageTemp == pageNum) {
					// 현재 페이지는 링크를 걸지 않음
					pagingStr += "&nbsp;" + pageTemp + "&nbsp";
				} else {
					pagingStr += "&nbsp;<a href='" + reqUrl + "?pageNum=" + pageTemp + "'>" + pageTemp + "</a>&nbsp;";
				}
				pageTemp++;
				blockCount++;
			}
		}
		
		if(num <= pageNum ) {
			for(int i=pageNum-num2; i<=pageNum+num2+1; i++) {
				if(i > totalPages) break;
				if(i == pageNum) 
					pagingStr += "&nbsp;" + i + "&nbsp";
				else {
					pagingStr += "&nbsp;<a href='" + reqUrl + "?pageNum=" + i + "'>" + i + "</a>&nbsp;";
				}
			}
		}

		if (pageNum >= 1 && pageNum < totalPages-num2 ) {
			pagingStr += "&nbsp;";
			pagingStr += "<a href='" + reqUrl + "?pageNum=" + totalPages + "'>[마지막 페이지]</a>";
		}

		return pagingStr;
	}

}

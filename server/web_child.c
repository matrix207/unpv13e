#include "unp.h"

#define MAXN 16384 /* max # bytes can request */

void web_child(int sockfd)
{
	int ntowrite;
	ssize_t nread;
	char line[MAXLINE], result[MAXN];

	for (;;) {
		printf("[proc %d] start do request.\n", getpid());
		if ((nread = Readline (sockfd, line, MAXLINE)) == 0)
			return; /* connect closed by other end */
		/* line from client specifies #bytes to write back */
		ntowrite = atol(line);
		if ((ntowrite <= 0) || (ntowrite > MAXN))
			err_quit("child request for %d bytes", ntowrite);

		Write(sockfd, result, ntowrite);
		printf("[proc %d] end do request.\n", getpid());
	}
}


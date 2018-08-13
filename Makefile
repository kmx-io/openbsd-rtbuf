# $OpenBSD: $

COMMENT=	RTBUF real time buffers

VERSION=	0.2
DISTNAME=	rtbuf-${VERSION}
CATEGORIES=	multimedia

# License: BSD + SleepyCat's additions.
# Must purchase license to redistribute if not distributing the source.
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	https://github.com/kmx-io/rtbuf/archive/

WANTLIB=	c m sndio glfw

LIB_DEPENDS+=	graphics/glfw>=3

SHARED_LIBS+=	rtbuf        0.0
SHARED_LIBS+=	rtbuf_glfw3  0.0
SHARED_LIBS+=	rtbuf_music  0.0
SHARED_LIBS+=	rtbuf_signal 0.0
SHARED_LIBS+=	rtbuf_sndio  0.0
SHARED_LIBS+=	rtbuf_synth  0.0

WRKDIST=	${WRKDIR}/rtbuf-${DISTNAME}

CONFIGURE_STYLE=	gnu

CONFIGURE_ARGS=	CFLAGS="-I/usr/local/include -I/usr/X11R6/include" \
		LDFLAGS="-L/usr/local/lib -L/usr/X11R6/lib" \
		CC=gcc

.include <bsd.port.mk>

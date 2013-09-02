.class Landroid/webkit/HTML5VideoViewProxy;
.super Landroid/os/Handler;
.source "HTML5VideoViewProxy.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/media/MediaPlayer$OnErrorListener;
.implements Landroid/media/MediaPlayer$OnInfoListener;
.implements Landroid/media/MediaPlayer$OnVideoSizeChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/webkit/HTML5VideoViewProxy$InlineVideoInfo;,
        Landroid/webkit/HTML5VideoViewProxy$PosterDownloader;,
        Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;
    }
.end annotation


# static fields
.field private static final BUFFERING_END:I = 0x6a

.field private static final BUFFERING_START:I = 0x69

.field private static final ENDED:I = 0xc9

.field private static final ENTER_FULLSCREEN:I = 0x70

.field private static final ERROR:I = 0x67

.field private static final EXIT_FULLSCREEN:I = 0x71

.field private static final INIT:I = 0x6b

.field private static final LOAD:I = 0x6e

.field private static final LOAD_DEFAULT_POSTER:I = 0x68

.field private static final LOAD_METADATA:I = 0x6f

.field private static final LOGTAG:Ljava/lang/String; = "HTML5VideoViewProxy"

.field private static final PAUSE:I = 0x66

.field private static final PAUSED:I = 0xcb

.field private static final PLAY:I = 0x64

.field private static final PLAYING:I = 0xce

.field private static final POSTER_FETCHED:I = 0xca

.field private static final PREPARED:I = 0xc8

.field private static final SEEK:I = 0x65

.field private static final SET_VOLUME:I = 0x6d

.field private static final SIZE_CHANGED:I = 0xcd

.field private static final STOPFULLSCREEN:I = 0xcc

.field private static final TERM:I = 0x6c

.field private static final TIMEUPDATE:I = 0x12c


# instance fields
.field private mIsFullscreen:Z

.field mNativePointer:I

.field private mPoster:Landroid/graphics/Bitmap;

.field private mPosterDownloader:Landroid/webkit/HTML5VideoViewProxy$PosterDownloader;

.field private mSeekPosition:I

.field private mVideoLayerId:I

.field private mVideoPlayer:Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;

.field private mWebCoreHandler:Landroid/os/Handler;

.field private mWebView:Landroid/webkit/WebViewClassic;


# direct methods
.method private constructor <init>(Landroid/webkit/WebViewClassic;II)V
    .locals 2
    .parameter "webView"
    .parameter "nativePtr"
    .parameter "videoLayerId"

    .prologue
    .line 630
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 632
    iput-object p1, p0, Landroid/webkit/HTML5VideoViewProxy;->mWebView:Landroid/webkit/WebViewClassic;

    .line 634
    iput p2, p0, Landroid/webkit/HTML5VideoViewProxy;->mNativePointer:I

    .line 637
    iput p3, p0, Landroid/webkit/HTML5VideoViewProxy;->mVideoLayerId:I

    .line 639
    invoke-direct {p0}, Landroid/webkit/HTML5VideoViewProxy;->createWebCoreHandler()V

    .line 640
    new-instance v1, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;

    invoke-direct {v1, p0, p0}, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;-><init>(Landroid/webkit/HTML5VideoViewProxy;Landroid/webkit/HTML5VideoViewProxy;)V

    iput-object v1, p0, Landroid/webkit/HTML5VideoViewProxy;->mVideoPlayer:Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;

    .line 641
    const/16 v1, 0x6b

    invoke-virtual {p0, v1}, Landroid/webkit/HTML5VideoViewProxy;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 642
    .local v0, message:Landroid/os/Message;
    invoke-virtual {p0, v0}, Landroid/webkit/HTML5VideoViewProxy;->sendMessage(Landroid/os/Message;)Z

    .line 643
    return-void
.end method

.method static synthetic access$000(Landroid/webkit/HTML5VideoViewProxy;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget v0, p0, Landroid/webkit/HTML5VideoViewProxy;->mVideoLayerId:I

    return v0
.end method

.method static synthetic access$100(Landroid/graphics/SurfaceTexture;IIIII)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"

    .prologue
    .line 46
    invoke-static/range {p0 .. p5}, Landroid/webkit/HTML5VideoViewProxy;->nativeSendSurfaceTexture(Landroid/graphics/SurfaceTexture;IIIII)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1000(Landroid/webkit/HTML5VideoViewProxy;IIII)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 46
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/webkit/HTML5VideoViewProxy;->nativeOnSizeChanged(IIII)V

    return-void
.end method

.method static synthetic access$1102(Landroid/webkit/HTML5VideoViewProxy;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46
    iput p1, p0, Landroid/webkit/HTML5VideoViewProxy;->mSeekPosition:I

    return p1
.end method

.method static synthetic access$1200(Landroid/webkit/HTML5VideoViewProxy;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46
    invoke-direct {p0, p1}, Landroid/webkit/HTML5VideoViewProxy;->nativeOnEnded(I)V

    return-void
.end method

.method static synthetic access$1300(Landroid/webkit/HTML5VideoViewProxy;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46
    invoke-direct {p0, p1}, Landroid/webkit/HTML5VideoViewProxy;->nativeOnPaused(I)V

    return-void
.end method

.method static synthetic access$1400(Landroid/webkit/HTML5VideoViewProxy;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46
    invoke-direct {p0, p1}, Landroid/webkit/HTML5VideoViewProxy;->nativeOnPlaying(I)V

    return-void
.end method

.method static synthetic access$1500(Landroid/webkit/HTML5VideoViewProxy;Landroid/graphics/Bitmap;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 46
    invoke-direct {p0, p1, p2}, Landroid/webkit/HTML5VideoViewProxy;->nativeOnPosterFetched(Landroid/graphics/Bitmap;I)V

    return-void
.end method

.method static synthetic access$1600(Landroid/webkit/HTML5VideoViewProxy;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 46
    invoke-direct {p0, p1, p2}, Landroid/webkit/HTML5VideoViewProxy;->nativeOnTimeupdate(II)V

    return-void
.end method

.method static synthetic access$1700(Landroid/webkit/HTML5VideoViewProxy;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46
    invoke-direct {p0, p1}, Landroid/webkit/HTML5VideoViewProxy;->nativeOnStopFullscreen(I)V

    return-void
.end method

.method static synthetic access$200(Landroid/webkit/HTML5VideoViewProxy;)Landroid/webkit/WebViewClassic;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Landroid/webkit/HTML5VideoViewProxy;->mWebView:Landroid/webkit/WebViewClassic;

    return-object v0
.end method

.method static synthetic access$500(Landroid/webkit/HTML5VideoViewProxy;Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46
    invoke-direct {p0, p1}, Landroid/webkit/HTML5VideoViewProxy;->doSetPoster(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method static synthetic access$900(Landroid/webkit/HTML5VideoViewProxy;IIII)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 46
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/webkit/HTML5VideoViewProxy;->nativeOnPrepared(IIII)V

    return-void
.end method

.method private createWebCoreHandler()V
    .locals 1

    .prologue
    .line 646
    new-instance v0, Landroid/webkit/HTML5VideoViewProxy$1;

    invoke-direct {v0, p0}, Landroid/webkit/HTML5VideoViewProxy$1;-><init>(Landroid/webkit/HTML5VideoViewProxy;)V

    iput-object v0, p0, Landroid/webkit/HTML5VideoViewProxy;->mWebCoreHandler:Landroid/os/Handler;

    .line 691
    return-void
.end method

.method private doSetPoster(Landroid/graphics/Bitmap;)V
    .locals 3
    .parameter "poster"

    .prologue
    .line 694
    if-nez p1, :cond_0

    .line 702
    :goto_0
    return-void

    .line 698
    :cond_0
    iput-object p1, p0, Landroid/webkit/HTML5VideoViewProxy;->mPoster:Landroid/graphics/Bitmap;

    .line 699
    iget-object v1, p0, Landroid/webkit/HTML5VideoViewProxy;->mWebCoreHandler:Landroid/os/Handler;

    const/16 v2, 0xca

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 700
    .local v0, msg:Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 701
    iget-object v1, p0, Landroid/webkit/HTML5VideoViewProxy;->mWebCoreHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public static getInstance(Landroid/webkit/WebViewCore;II)Landroid/webkit/HTML5VideoViewProxy;
    .locals 2
    .parameter "webViewCore"
    .parameter "nativePtr"
    .parameter "videoLayerId"

    .prologue
    .line 925
    new-instance v0, Landroid/webkit/HTML5VideoViewProxy;

    invoke-virtual {p0}, Landroid/webkit/WebViewCore;->getWebViewClassic()Landroid/webkit/WebViewClassic;

    move-result-object v1

    invoke-direct {v0, v1, p1, p2}, Landroid/webkit/HTML5VideoViewProxy;-><init>(Landroid/webkit/WebViewClassic;II)V

    return-object v0
.end method

.method private native nativeOnEnded(I)V
.end method

.method private native nativeOnPaused(I)V
.end method

.method private native nativeOnPlaying(I)V
.end method

.method private native nativeOnPosterFetched(Landroid/graphics/Bitmap;I)V
.end method

.method private native nativeOnPrepared(IIII)V
.end method

.method private native nativeOnSizeChanged(IIII)V
.end method

.method private native nativeOnStopFullscreen(I)V
.end method

.method private native nativeOnTimeupdate(II)V
.end method

.method private native nativePrepareEnterFullscreen(I)V
.end method

.method private native nativePrepareExitFullscreen(I)V
.end method

.method private static native nativeSendSurfaceTexture(Landroid/graphics/SurfaceTexture;IIIII)Z
.end method

.method private sendTimeupdate()V
    .locals 3

    .prologue
    .line 705
    iget-object v1, p0, Landroid/webkit/HTML5VideoViewProxy;->mWebCoreHandler:Landroid/os/Handler;

    const/16 v2, 0x12c

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 706
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Landroid/webkit/HTML5VideoViewProxy;->mVideoPlayer:Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;

    invoke-virtual {v1}, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->getCurrentPosition()I

    move-result v1

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 707
    iget-object v1, p0, Landroid/webkit/HTML5VideoViewProxy;->mWebCoreHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 708
    return-void
.end method


# virtual methods
.method public dispatchOnEnded()V
    .locals 3

    .prologue
    .line 339
    iget-object v1, p0, Landroid/webkit/HTML5VideoViewProxy;->mWebCoreHandler:Landroid/os/Handler;

    const/16 v2, 0xc9

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 340
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Landroid/webkit/HTML5VideoViewProxy;->mWebCoreHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 341
    return-void
.end method

.method public dispatchOnPaused()V
    .locals 3

    .prologue
    .line 344
    iget-object v1, p0, Landroid/webkit/HTML5VideoViewProxy;->mWebCoreHandler:Landroid/os/Handler;

    const/16 v2, 0xcb

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 345
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Landroid/webkit/HTML5VideoViewProxy;->mWebCoreHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 346
    return-void
.end method

.method public dispatchOnPlaying()V
    .locals 3

    .prologue
    .line 349
    iget-object v1, p0, Landroid/webkit/HTML5VideoViewProxy;->mWebCoreHandler:Landroid/os/Handler;

    const/16 v2, 0xce

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 350
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Landroid/webkit/HTML5VideoViewProxy;->mWebCoreHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 351
    return-void
.end method

.method public dispatchOnStopFullscreen()V
    .locals 3

    .prologue
    .line 354
    iget-object v1, p0, Landroid/webkit/HTML5VideoViewProxy;->mWebCoreHandler:Landroid/os/Handler;

    const/16 v2, 0xcc

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 355
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Landroid/webkit/HTML5VideoViewProxy;->mWebCoreHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 356
    return-void
.end method

.method public enterFullscreen(Ljava/lang/String;FFFF)V
    .locals 7
    .parameter "url"
    .parameter "x"
    .parameter "y"
    .parameter "w"
    .parameter "h"

    .prologue
    .line 809
    if-nez p1, :cond_0

    .line 814
    :goto_0
    return-void

    .line 811
    :cond_0
    const/16 v0, 0x70

    invoke-virtual {p0, v0}, Landroid/webkit/HTML5VideoViewProxy;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    .line 812
    .local v6, message:Landroid/os/Message;
    new-instance v0, Landroid/webkit/HTML5VideoViewProxy$InlineVideoInfo;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Landroid/webkit/HTML5VideoViewProxy$InlineVideoInfo;-><init>(Ljava/lang/String;FFFF)V

    iput-object v0, v6, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 813
    invoke-virtual {p0, v6}, Landroid/webkit/HTML5VideoViewProxy;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public exitFullscreen(FFFF)V
    .locals 7
    .parameter "x"
    .parameter "y"
    .parameter "w"
    .parameter "h"

    .prologue
    .line 817
    const/16 v0, 0x71

    invoke-virtual {p0, v0}, Landroid/webkit/HTML5VideoViewProxy;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    .line 818
    .local v6, message:Landroid/os/Message;
    new-instance v0, Landroid/webkit/HTML5VideoViewProxy$InlineVideoInfo;

    const/4 v1, 0x0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Landroid/webkit/HTML5VideoViewProxy$InlineVideoInfo;-><init>(Ljava/lang/String;FFFF)V

    iput-object v0, v6, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 819
    invoke-virtual {p0, v6}, Landroid/webkit/HTML5VideoViewProxy;->sendMessage(Landroid/os/Message;)Z

    .line 820
    return-void
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 711
    iget-object v0, p0, Landroid/webkit/HTML5VideoViewProxy;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkit/WebViewClassic;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public getVideoLayerId()I
    .locals 1

    .prologue
    .line 893
    iget v0, p0, Landroid/webkit/HTML5VideoViewProxy;->mVideoLayerId:I

    return v0
.end method

.method getWebView()Landroid/webkit/WebViewClassic;
    .locals 1

    .prologue
    .line 929
    iget-object v0, p0, Landroid/webkit/HTML5VideoViewProxy;->mWebView:Landroid/webkit/WebViewClassic;

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 12
    .parameter "msg"

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 380
    iget v2, p1, Landroid/os/Message;->what:I

    sparse-switch v2, :sswitch_data_0

    .line 472
    :cond_0
    :goto_0
    return-void

    .line 382
    :sswitch_0
    iget-object v10, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Ljava/lang/String;

    .line 383
    .local v10, url:Ljava/lang/String;
    iget v8, p1, Landroid/os/Message;->arg1:I

    .line 384
    .local v8, seekPosition:I
    iget v2, p1, Landroid/os/Message;->arg2:I

    if-nez v2, :cond_1

    :goto_1
    iput-boolean v0, p0, Landroid/webkit/HTML5VideoViewProxy;->mIsFullscreen:Z

    .line 385
    iget-object v0, p0, Landroid/webkit/HTML5VideoViewProxy;->mVideoPlayer:Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;

    invoke-virtual {v0, v10, v8}, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->play(Ljava/lang/String;I)V

    goto :goto_0

    :cond_1
    move v0, v1

    .line 384
    goto :goto_1

    .line 389
    .end local v8           #seekPosition:I
    .end local v10           #url:Ljava/lang/String;
    :sswitch_1
    iget-object v10, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Ljava/lang/String;

    .line 390
    .restart local v10       #url:Ljava/lang/String;
    iget-object v0, p0, Landroid/webkit/HTML5VideoViewProxy;->mVideoPlayer:Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;

    invoke-virtual {v0, v10}, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->loadMetadata(Ljava/lang/String;)V

    goto :goto_0

    .line 394
    .end local v10           #url:Ljava/lang/String;
    :sswitch_2
    iget-object v10, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Ljava/lang/String;

    .line 395
    .restart local v10       #url:Ljava/lang/String;
    iget v2, p1, Landroid/os/Message;->arg1:I

    if-nez v2, :cond_2

    :goto_2
    iput-boolean v0, p0, Landroid/webkit/HTML5VideoViewProxy;->mIsFullscreen:Z

    .line 396
    iget-object v0, p0, Landroid/webkit/HTML5VideoViewProxy;->mVideoPlayer:Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;

    invoke-virtual {v0, v10}, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->load(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    move v0, v1

    .line 395
    goto :goto_2

    .line 400
    .end local v10           #url:Ljava/lang/String;
    :sswitch_3
    iget-object v9, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Ljava/lang/Integer;

    .line 401
    .local v9, time:Ljava/lang/Integer;
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Landroid/webkit/HTML5VideoViewProxy;->mSeekPosition:I

    .line 402
    iget-object v0, p0, Landroid/webkit/HTML5VideoViewProxy;->mVideoPlayer:Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;

    iget v1, p0, Landroid/webkit/HTML5VideoViewProxy;->mSeekPosition:I

    invoke-virtual {v0, v1}, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->seek(I)V

    goto :goto_0

    .line 406
    .end local v9           #time:Ljava/lang/Integer;
    :sswitch_4
    iget-object v0, p0, Landroid/webkit/HTML5VideoViewProxy;->mVideoPlayer:Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;

    invoke-virtual {v0}, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->pause()V

    goto :goto_0

    .line 410
    :sswitch_5
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-ne v0, v1, :cond_3

    .line 411
    iget-object v0, p0, Landroid/webkit/HTML5VideoViewProxy;->mVideoPlayer:Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;

    #setter for: Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->isVideoSelfEnded:Z
    invoke-static {v0, v1}, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->access$302(Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;Z)Z

    .line 412
    :cond_3
    iget-object v0, p0, Landroid/webkit/HTML5VideoViewProxy;->mVideoPlayer:Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;

    invoke-virtual {v0}, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->end()V

    goto :goto_0

    .line 415
    :sswitch_6
    iget-object v0, p0, Landroid/webkit/HTML5VideoViewProxy;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkit/WebViewClassic;->getWebChromeClient()Landroid/webkit/WebChromeClient;

    move-result-object v6

    .line 416
    .local v6, client:Landroid/webkit/WebChromeClient;
    if-eqz v6, :cond_0

    .line 417
    invoke-virtual {v6}, Landroid/webkit/WebChromeClient;->onHideCustomView()V

    goto :goto_0

    .line 422
    .end local v6           #client:Landroid/webkit/WebChromeClient;
    :sswitch_7
    iget-object v0, p0, Landroid/webkit/HTML5VideoViewProxy;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkit/WebViewClassic;->getWebChromeClient()Landroid/webkit/WebChromeClient;

    move-result-object v6

    .line 423
    .restart local v6       #client:Landroid/webkit/WebChromeClient;
    if-eqz v6, :cond_0

    .line 424
    invoke-virtual {v6}, Landroid/webkit/WebChromeClient;->getDefaultVideoPoster()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/webkit/HTML5VideoViewProxy;->doSetPoster(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 429
    .end local v6           #client:Landroid/webkit/WebChromeClient;
    :sswitch_8
    iget-object v0, p0, Landroid/webkit/HTML5VideoViewProxy;->mVideoPlayer:Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;

    invoke-virtual {v0}, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 430
    invoke-direct {p0}, Landroid/webkit/HTML5VideoViewProxy;->sendTimeupdate()V

    goto :goto_0

    .line 435
    :sswitch_9
    iget-object v0, p0, Landroid/webkit/HTML5VideoViewProxy;->mVideoPlayer:Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;

    #calls: Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->setPlayerBuffering(Z)V
    invoke-static {v0, v1}, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->access$400(Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;Z)V

    goto/16 :goto_0

    .line 439
    :sswitch_a
    iget-object v1, p0, Landroid/webkit/HTML5VideoViewProxy;->mVideoPlayer:Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;

    #calls: Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->setPlayerBuffering(Z)V
    invoke-static {v1, v0}, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->access$400(Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;Z)V

    goto/16 :goto_0

    .line 446
    :sswitch_b
    iget-object v0, p0, Landroid/webkit/HTML5VideoViewProxy;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v0, p0}, Landroid/webkit/WebViewClassic;->registerHTML5VideoViewProxy(Landroid/webkit/HTML5VideoViewProxy;)V

    goto/16 :goto_0

    .line 450
    :sswitch_c
    iget-object v0, p0, Landroid/webkit/HTML5VideoViewProxy;->mVideoPlayer:Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;

    invoke-virtual {v0}, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->suspend()V

    .line 451
    iget-object v0, p0, Landroid/webkit/HTML5VideoViewProxy;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v0, p0}, Landroid/webkit/WebViewClassic;->unregisterHTML5VideoViewProxy(Landroid/webkit/HTML5VideoViewProxy;)V

    goto/16 :goto_0

    .line 455
    :sswitch_d
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v11

    .line 456
    .local v11, vol:F
    iget-object v0, p0, Landroid/webkit/HTML5VideoViewProxy;->mVideoPlayer:Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;

    invoke-virtual {v0, v11}, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->setVolume(F)V

    goto/16 :goto_0

    .line 460
    .end local v11           #vol:F
    :sswitch_e
    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Landroid/webkit/HTML5VideoViewProxy$InlineVideoInfo;

    .line 461
    .local v7, info:Landroid/webkit/HTML5VideoViewProxy$InlineVideoInfo;
    iget-object v0, p0, Landroid/webkit/HTML5VideoViewProxy;->mVideoPlayer:Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;

    invoke-virtual {v7}, Landroid/webkit/HTML5VideoViewProxy$InlineVideoInfo;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7}, Landroid/webkit/HTML5VideoViewProxy$InlineVideoInfo;->getX()F

    move-result v2

    invoke-virtual {v7}, Landroid/webkit/HTML5VideoViewProxy$InlineVideoInfo;->getY()F

    move-result v3

    invoke-virtual {v7}, Landroid/webkit/HTML5VideoViewProxy$InlineVideoInfo;->getWidth()F

    move-result v4

    invoke-virtual {v7}, Landroid/webkit/HTML5VideoViewProxy$InlineVideoInfo;->getHeight()F

    move-result v5

    invoke-virtual/range {v0 .. v5}, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->enterFullscreenVideo(Ljava/lang/String;FFFF)V

    goto/16 :goto_0

    .line 466
    .end local v7           #info:Landroid/webkit/HTML5VideoViewProxy$InlineVideoInfo;
    :sswitch_f
    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Landroid/webkit/HTML5VideoViewProxy$InlineVideoInfo;

    .line 467
    .restart local v7       #info:Landroid/webkit/HTML5VideoViewProxy$InlineVideoInfo;
    iget-object v0, p0, Landroid/webkit/HTML5VideoViewProxy;->mVideoPlayer:Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;

    invoke-virtual {v7}, Landroid/webkit/HTML5VideoViewProxy$InlineVideoInfo;->getX()F

    move-result v1

    invoke-virtual {v7}, Landroid/webkit/HTML5VideoViewProxy$InlineVideoInfo;->getY()F

    move-result v2

    invoke-virtual {v7}, Landroid/webkit/HTML5VideoViewProxy$InlineVideoInfo;->getWidth()F

    move-result v3

    invoke-virtual {v7}, Landroid/webkit/HTML5VideoViewProxy$InlineVideoInfo;->getHeight()F

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->exitFullscreenVideo(FFFF)V

    goto/16 :goto_0

    .line 380
    nop

    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_0
        0x65 -> :sswitch_3
        0x66 -> :sswitch_4
        0x67 -> :sswitch_6
        0x68 -> :sswitch_7
        0x69 -> :sswitch_9
        0x6a -> :sswitch_a
        0x6b -> :sswitch_b
        0x6c -> :sswitch_c
        0x6d -> :sswitch_d
        0x6e -> :sswitch_2
        0x6f -> :sswitch_1
        0x70 -> :sswitch_e
        0x71 -> :sswitch_f
        0xc9 -> :sswitch_5
        0x12c -> :sswitch_8
    .end sparse-switch
.end method

.method public isFullscreen()Z
    .locals 1

    .prologue
    .line 373
    iget-boolean v0, p0, Landroid/webkit/HTML5VideoViewProxy;->mIsFullscreen:Z

    return v0
.end method

.method public loadMetadata(Ljava/lang/String;)V
    .locals 2
    .parameter "url"

    .prologue
    .line 749
    if-nez p1, :cond_0

    .line 755
    :goto_0
    return-void

    .line 752
    :cond_0
    const/16 v1, 0x6f

    invoke-virtual {p0, v1}, Landroid/webkit/HTML5VideoViewProxy;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 753
    .local v0, message:Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 754
    invoke-virtual {p0, v0}, Landroid/webkit/HTML5VideoViewProxy;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public loadPoster(Ljava/lang/String;)V
    .locals 2
    .parameter "url"

    .prologue
    .line 794
    if-nez p1, :cond_0

    .line 795
    const/16 v1, 0x68

    invoke-virtual {p0, v1}, Landroid/webkit/HTML5VideoViewProxy;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 796
    .local v0, message:Landroid/os/Message;
    invoke-virtual {p0, v0}, Landroid/webkit/HTML5VideoViewProxy;->sendMessage(Landroid/os/Message;)Z

    .line 806
    .end local v0           #message:Landroid/os/Message;
    :goto_0
    return-void

    .line 800
    :cond_0
    iget-object v1, p0, Landroid/webkit/HTML5VideoViewProxy;->mPosterDownloader:Landroid/webkit/HTML5VideoViewProxy$PosterDownloader;

    if-eqz v1, :cond_1

    .line 801
    iget-object v1, p0, Landroid/webkit/HTML5VideoViewProxy;->mPosterDownloader:Landroid/webkit/HTML5VideoViewProxy$PosterDownloader;

    invoke-virtual {v1}, Landroid/webkit/HTML5VideoViewProxy$PosterDownloader;->cancelAndReleaseQueue()V

    .line 804
    :cond_1
    new-instance v1, Landroid/webkit/HTML5VideoViewProxy$PosterDownloader;

    invoke-direct {v1, p1, p0}, Landroid/webkit/HTML5VideoViewProxy$PosterDownloader;-><init>(Ljava/lang/String;Landroid/webkit/HTML5VideoViewProxy;)V

    iput-object v1, p0, Landroid/webkit/HTML5VideoViewProxy;->mPosterDownloader:Landroid/webkit/HTML5VideoViewProxy$PosterDownloader;

    .line 805
    iget-object v1, p0, Landroid/webkit/HTML5VideoViewProxy;->mPosterDownloader:Landroid/webkit/HTML5VideoViewProxy$PosterDownloader;

    invoke-virtual {v1}, Landroid/webkit/HTML5VideoViewProxy$PosterDownloader;->start()V

    goto :goto_0
.end method

.method public loadVideo(Ljava/lang/String;Z)V
    .locals 2
    .parameter "url"
    .parameter "isFullscreen"

    .prologue
    .line 735
    if-nez p1, :cond_0

    .line 742
    :goto_0
    return-void

    .line 738
    :cond_0
    const/16 v1, 0x6e

    invoke-virtual {p0, v1}, Landroid/webkit/HTML5VideoViewProxy;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 739
    .local v0, message:Landroid/os/Message;
    if-eqz p2, :cond_1

    const/4 v1, 0x1

    :goto_1
    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 740
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 741
    invoke-virtual {p0, v0}, Landroid/webkit/HTML5VideoViewProxy;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 739
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 3
    .parameter "mp"

    .prologue
    .line 329
    const/16 v0, 0xc9

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroid/webkit/HTML5VideoViewProxy;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/webkit/HTML5VideoViewProxy;->sendMessage(Landroid/os/Message;)Z

    .line 330
    return-void
.end method

.method public onEnterFullscreen()V
    .locals 1

    .prologue
    .line 897
    iget-object v0, p0, Landroid/webkit/HTML5VideoViewProxy;->mVideoPlayer:Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;

    invoke-virtual {v0}, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->onEnterFullscreen()V

    .line 898
    return-void
.end method

.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 1
    .parameter "mp"
    .parameter "what"
    .parameter "extra"

    .prologue
    .line 334
    const/16 v0, 0x67

    invoke-virtual {p0, v0}, Landroid/webkit/HTML5VideoViewProxy;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/webkit/HTML5VideoViewProxy;->sendMessage(Landroid/os/Message;)Z

    .line 335
    const/4 v0, 0x0

    return v0
.end method

.method public onInfo(Landroid/media/MediaPlayer;II)Z
    .locals 1
    .parameter "mp"
    .parameter "what"
    .parameter "extra"

    .prologue
    .line 948
    const/16 v0, 0x2bd

    if-ne p2, v0, :cond_1

    .line 949
    const/16 v0, 0x69

    invoke-virtual {p0, v0, p2, p3}, Landroid/webkit/HTML5VideoViewProxy;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/webkit/HTML5VideoViewProxy;->sendMessage(Landroid/os/Message;)Z

    .line 953
    :cond_0
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 950
    :cond_1
    const/16 v0, 0x2be

    if-ne p2, v0, :cond_0

    .line 951
    const/16 v0, 0x6a

    invoke-virtual {p0, v0, p2, p3}, Landroid/webkit/HTML5VideoViewProxy;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/webkit/HTML5VideoViewProxy;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 5
    .parameter "mp"

    .prologue
    .line 299
    iget-object v2, p0, Landroid/webkit/HTML5VideoViewProxy;->mVideoPlayer:Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;

    invoke-virtual {v2}, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->onPrepared()V

    .line 300
    iget-object v2, p0, Landroid/webkit/HTML5VideoViewProxy;->mWebCoreHandler:Landroid/os/Handler;

    const/16 v3, 0xc8

    invoke-static {v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    .line 301
    .local v1, msg:Landroid/os/Message;
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 302
    .local v0, map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v2, "dur"

    new-instance v3, Ljava/lang/Integer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 303
    const-string/jumbo v2, "width"

    new-instance v3, Ljava/lang/Integer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 304
    const-string v2, "height"

    new-instance v3, Ljava/lang/Integer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 305
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 306
    iget-object v2, p0, Landroid/webkit/HTML5VideoViewProxy;->mWebCoreHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 307
    return-void
.end method

.method public onStopFullscreen()V
    .locals 1

    .prologue
    .line 901
    iget-object v0, p0, Landroid/webkit/HTML5VideoViewProxy;->mVideoPlayer:Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;

    invoke-virtual {v0}, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->onStopFullscreen()V

    .line 902
    invoke-virtual {p0}, Landroid/webkit/HTML5VideoViewProxy;->dispatchOnStopFullscreen()V

    .line 905
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/webkit/HTML5VideoViewProxy;->mIsFullscreen:Z

    .line 906
    return-void
.end method

.method public onTimeupdate()V
    .locals 1

    .prologue
    .line 369
    const/16 v0, 0x12c

    invoke-virtual {p0, v0}, Landroid/webkit/HTML5VideoViewProxy;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/webkit/HTML5VideoViewProxy;->sendMessage(Landroid/os/Message;)Z

    .line 370
    return-void
.end method

.method public onVideoSizeChanged(Landroid/media/MediaPlayer;II)V
    .locals 5
    .parameter "mp"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 311
    iget-object v2, p0, Landroid/webkit/HTML5VideoViewProxy;->mWebCoreHandler:Landroid/os/Handler;

    const/16 v3, 0xcd

    invoke-static {v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    .line 312
    .local v1, msg:Landroid/os/Message;
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 313
    .local v0, map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v2, p0, Landroid/webkit/HTML5VideoViewProxy;->mVideoPlayer:Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;

    invoke-virtual {v2}, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->isPrepared()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 314
    const-string v2, "dur"

    new-instance v3, Ljava/lang/Integer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 317
    :goto_0
    const-string/jumbo v2, "width"

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p2}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 318
    const-string v2, "height"

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p3}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 319
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 320
    iget-object v2, p0, Landroid/webkit/HTML5VideoViewProxy;->mWebCoreHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 321
    return-void

    .line 316
    :cond_0
    const-string v2, "dur"

    new-instance v3, Ljava/lang/Integer;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public pause()V
    .locals 2

    .prologue
    .line 771
    const/16 v1, 0x66

    invoke-virtual {p0, v1}, Landroid/webkit/HTML5VideoViewProxy;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 772
    .local v0, message:Landroid/os/Message;
    invoke-virtual {p0, v0}, Landroid/webkit/HTML5VideoViewProxy;->sendMessage(Landroid/os/Message;)Z

    .line 773
    return-void
.end method

.method public pauseAndDispatch()V
    .locals 1

    .prologue
    .line 870
    iget-object v0, p0, Landroid/webkit/HTML5VideoViewProxy;->mVideoPlayer:Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;

    invoke-virtual {v0}, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->pause()V

    .line 871
    return-void
.end method

.method public play(Ljava/lang/String;IZ)V
    .locals 2
    .parameter "url"
    .parameter "position"
    .parameter "isFullscreen"

    .prologue
    .line 720
    if-nez p1, :cond_0

    .line 728
    :goto_0
    return-void

    .line 723
    :cond_0
    const/16 v1, 0x64

    invoke-virtual {p0, v1}, Landroid/webkit/HTML5VideoViewProxy;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 724
    .local v0, message:Landroid/os/Message;
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 725
    if-eqz p3, :cond_1

    const/4 v1, 0x1

    :goto_1
    iput v1, v0, Landroid/os/Message;->arg2:I

    .line 726
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 727
    invoke-virtual {p0, v0}, Landroid/webkit/HTML5VideoViewProxy;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 725
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public prepareExitFullscreen()V
    .locals 1

    .prologue
    .line 885
    iget v0, p0, Landroid/webkit/HTML5VideoViewProxy;->mNativePointer:I

    invoke-direct {p0, v0}, Landroid/webkit/HTML5VideoViewProxy;->nativePrepareExitFullscreen(I)V

    .line 886
    return-void
.end method

.method public seek(I)V
    .locals 2
    .parameter "time"

    .prologue
    .line 762
    const/16 v1, 0x65

    invoke-virtual {p0, v1}, Landroid/webkit/HTML5VideoViewProxy;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 763
    .local v0, message:Landroid/os/Message;
    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 764
    invoke-virtual {p0, v0}, Landroid/webkit/HTML5VideoViewProxy;->sendMessage(Landroid/os/Message;)Z

    .line 765
    return-void
.end method

.method public setBaseLayer(I)V
    .locals 1
    .parameter "layer"

    .prologue
    .line 860
    iget-object v0, p0, Landroid/webkit/HTML5VideoViewProxy;->mVideoPlayer:Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;

    invoke-virtual {v0, p1}, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->setBaseLayer(I)V

    .line 861
    return-void
.end method

.method public setVolume(F)V
    .locals 2
    .parameter "volume"

    .prologue
    .line 913
    const/16 v1, 0x6d

    invoke-virtual {p0, v1}, Landroid/webkit/HTML5VideoViewProxy;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 914
    .local v0, message:Landroid/os/Message;
    new-instance v1, Ljava/lang/Float;

    invoke-direct {v1, p1}, Ljava/lang/Float;-><init>(F)V

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 915
    invoke-virtual {p0, v0}, Landroid/webkit/HTML5VideoViewProxy;->sendMessage(Landroid/os/Message;)Z

    .line 916
    return-void
.end method

.method public suspend()V
    .locals 1

    .prologue
    .line 874
    iget-object v0, p0, Landroid/webkit/HTML5VideoViewProxy;->mVideoPlayer:Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;

    invoke-virtual {v0}, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->suspend()V

    .line 875
    return-void
.end method

.method public teardown()V
    .locals 2

    .prologue
    .line 781
    iget-object v1, p0, Landroid/webkit/HTML5VideoViewProxy;->mPosterDownloader:Landroid/webkit/HTML5VideoViewProxy$PosterDownloader;

    if-eqz v1, :cond_0

    .line 782
    iget-object v1, p0, Landroid/webkit/HTML5VideoViewProxy;->mPosterDownloader:Landroid/webkit/HTML5VideoViewProxy$PosterDownloader;

    invoke-virtual {v1}, Landroid/webkit/HTML5VideoViewProxy$PosterDownloader;->cancelAndReleaseQueue()V

    .line 784
    :cond_0
    const/16 v1, 0x6c

    invoke-virtual {p0, v1}, Landroid/webkit/HTML5VideoViewProxy;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 785
    .local v0, message:Landroid/os/Message;
    invoke-virtual {p0, v0}, Landroid/webkit/HTML5VideoViewProxy;->sendMessage(Landroid/os/Message;)Z

    .line 786
    const/4 v1, 0x0

    iput v1, p0, Landroid/webkit/HTML5VideoViewProxy;->mNativePointer:I

    .line 787
    return-void
.end method

.method public updateSizeAndDuration(III)V
    .locals 4
    .parameter "width"
    .parameter "height"
    .parameter "duration"

    .prologue
    .line 359
    iget-object v2, p0, Landroid/webkit/HTML5VideoViewProxy;->mWebCoreHandler:Landroid/os/Handler;

    const/16 v3, 0xcd

    invoke-static {v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    .line 360
    .local v1, msg:Landroid/os/Message;
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 361
    .local v0, map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v2, "dur"

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p3}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 362
    const-string/jumbo v2, "width"

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 363
    const-string v2, "height"

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p2}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 364
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 365
    iget-object v2, p0, Landroid/webkit/HTML5VideoViewProxy;->mWebCoreHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 366
    return-void
.end method

.method public updateVideoLayerPlayerState()V
    .locals 1

    .prologue
    .line 865
    iget-object v0, p0, Landroid/webkit/HTML5VideoViewProxy;->mVideoPlayer:Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;

    invoke-virtual {v0}, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->updateVideoLayerPlayerState()V

    .line 866
    return-void
.end method

.method public webkitEnterFullscreen()V
    .locals 1

    .prologue
    .line 880
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/webkit/HTML5VideoViewProxy;->mIsFullscreen:Z

    .line 881
    iget v0, p0, Landroid/webkit/HTML5VideoViewProxy;->mNativePointer:I

    invoke-direct {p0, v0}, Landroid/webkit/HTML5VideoViewProxy;->nativePrepareEnterFullscreen(I)V

    .line 882
    return-void
.end method

.method public webkitExitFullscreen()V
    .locals 1

    .prologue
    .line 889
    invoke-static {}, Landroid/webkit/HTML5VideoFullscreen;->instance()Landroid/webkit/HTML5VideoFullscreen;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/webkit/HTML5VideoFullscreen;->webkitExitFullscreen(Landroid/webkit/HTML5VideoViewProxy;)V

    .line 890
    return-void
.end method

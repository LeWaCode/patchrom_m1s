.class final Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;
.super Ljava/lang/Object;
.source "HTML5VideoViewProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/HTML5VideoViewProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "VideoPlayer"
.end annotation


# instance fields
.field private isVideoSelfEnded:Z

.field private mCachedPosition:I

.field private mCachedVolume:F

.field private mHTML5VideoView:Landroid/webkit/HTML5VideoView;

.field private mProxy:Landroid/webkit/HTML5VideoViewProxy;

.field final synthetic this$0:Landroid/webkit/HTML5VideoViewProxy;


# direct methods
.method constructor <init>(Landroid/webkit/HTML5VideoViewProxy;Landroid/webkit/HTML5VideoViewProxy;)V
    .locals 1
    .parameter
    .parameter "proxy"

    .prologue
    .line 118
    iput-object p1, p0, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->this$0:Landroid/webkit/HTML5VideoViewProxy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->isVideoSelfEnded:Z

    .line 109
    const/high16 v0, -0x4080

    iput v0, p0, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mCachedVolume:F

    .line 119
    iput-object p2, p0, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mProxy:Landroid/webkit/HTML5VideoViewProxy;

    .line 120
    return-void
.end method

.method static synthetic access$302(Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 102
    iput-boolean p1, p0, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->isVideoSelfEnded:Z

    return p1
.end method

.method static synthetic access$400(Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 102
    invoke-direct {p0, p1}, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->setPlayerBuffering(Z)V

    return-void
.end method

.method private ensureHTML5VideoView(Ljava/lang/String;IZ)Z
    .locals 2
    .parameter "url"
    .parameter "time"
    .parameter "willPlay"

    .prologue
    .line 281
    iget-object v0, p0, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkit/HTML5VideoView;

    if-nez v0, :cond_0

    .line 282
    new-instance v0, Landroid/webkit/HTML5VideoView;

    iget-object v1, p0, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mProxy:Landroid/webkit/HTML5VideoViewProxy;

    invoke-direct {v0, v1, p2}, Landroid/webkit/HTML5VideoView;-><init>(Landroid/webkit/HTML5VideoViewProxy;I)V

    iput-object v0, p0, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkit/HTML5VideoView;

    .line 283
    iget-object v0, p0, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkit/HTML5VideoView;

    invoke-virtual {v0, p3}, Landroid/webkit/HTML5VideoView;->setStartWhenPrepared(Z)V

    .line 284
    iget-object v0, p0, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkit/HTML5VideoView;

    invoke-virtual {v0, p1}, Landroid/webkit/HTML5VideoView;->setVideoURI(Ljava/lang/String;)V

    .line 285
    const/4 v0, 0x1

    .line 287
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setPlayerBuffering(Z)V
    .locals 1
    .parameter "playerBuffering"

    .prologue
    .line 115
    iget-object v0, p0, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkit/HTML5VideoView;

    invoke-virtual {v0, p1}, Landroid/webkit/HTML5VideoView;->setPlayerBuffering(Z)V

    .line 116
    return-void
.end method


# virtual methods
.method public end()V
    .locals 3

    .prologue
    .line 258
    iget-object v0, p0, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkit/HTML5VideoView;

    if-eqz v0, :cond_0

    .line 259
    invoke-static {}, Landroid/webkit/HTML5VideoFullscreen;->instance()Landroid/webkit/HTML5VideoFullscreen;

    move-result-object v0

    iget-object v1, p0, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mProxy:Landroid/webkit/HTML5VideoViewProxy;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/webkit/HTML5VideoFullscreen;->showMediaControls(Landroid/webkit/HTML5VideoViewProxy;Z)V

    .line 260
    :cond_0
    iget-object v0, p0, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mProxy:Landroid/webkit/HTML5VideoViewProxy;

    if-eqz v0, :cond_1

    .line 261
    iget-boolean v0, p0, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->isVideoSelfEnded:Z

    if-eqz v0, :cond_2

    .line 262
    iget-object v0, p0, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mProxy:Landroid/webkit/HTML5VideoViewProxy;

    invoke-virtual {v0}, Landroid/webkit/HTML5VideoViewProxy;->dispatchOnEnded()V

    .line 266
    :cond_1
    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->isVideoSelfEnded:Z

    .line 267
    return-void

    .line 264
    :cond_2
    iget-object v0, p0, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mProxy:Landroid/webkit/HTML5VideoViewProxy;

    invoke-virtual {v0}, Landroid/webkit/HTML5VideoViewProxy;->dispatchOnPaused()V

    goto :goto_0
.end method

.method public enterFullscreenVideo(Ljava/lang/String;FFFF)V
    .locals 6
    .parameter "url"
    .parameter "x"
    .parameter "y"
    .parameter "w"
    .parameter "h"

    .prologue
    .line 177
    iget v0, p0, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mCachedPosition:I

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->ensureHTML5VideoView(Ljava/lang/String;IZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 178
    iget-object v0, p0, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkit/HTML5VideoView;

    invoke-virtual {v0}, Landroid/webkit/HTML5VideoView;->prepareDataAndDisplayMode()V

    .line 180
    :cond_0
    iget-object v0, p0, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkit/HTML5VideoView;

    iget-object v1, p0, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->this$0:Landroid/webkit/HTML5VideoViewProxy;

    #getter for: Landroid/webkit/HTML5VideoViewProxy;->mWebView:Landroid/webkit/WebViewClassic;
    invoke-static {v1}, Landroid/webkit/HTML5VideoViewProxy;->access$200(Landroid/webkit/HTML5VideoViewProxy;)Landroid/webkit/WebViewClassic;

    move-result-object v1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/webkit/HTML5VideoView;->enterFullscreenVideoState(Landroid/webkit/WebViewClassic;FFFF)V

    .line 181
    return-void
.end method

.method public exitFullscreenVideo(FFFF)V
    .locals 1
    .parameter "x"
    .parameter "y"
    .parameter "w"
    .parameter "h"

    .prologue
    .line 184
    iget-object v0, p0, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkit/HTML5VideoView;

    if-eqz v0, :cond_0

    .line 185
    iget-object v0, p0, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkit/HTML5VideoView;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/webkit/HTML5VideoView;->exitFullscreenVideoState(FFFF)V

    .line 187
    :cond_0
    return-void
.end method

.method public getCurrentPosition()I
    .locals 2

    .prologue
    .line 220
    const/4 v0, 0x0

    .line 221
    .local v0, currentPosMs:I
    iget-object v1, p0, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkit/HTML5VideoView;

    if-eqz v1, :cond_0

    .line 222
    iget-object v1, p0, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkit/HTML5VideoView;

    invoke-virtual {v1}, Landroid/webkit/HTML5VideoView;->getCurrentPosition()I

    move-result v0

    .line 224
    :cond_0
    return v0
.end method

.method public isPlaying()Z
    .locals 1

    .prologue
    .line 216
    iget-object v0, p0, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkit/HTML5VideoView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkit/HTML5VideoView;

    invoke-virtual {v0}, Landroid/webkit/HTML5VideoView;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPrepared()Z
    .locals 2

    .prologue
    .line 291
    iget-object v0, p0, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkit/HTML5VideoView;

    invoke-virtual {v0}, Landroid/webkit/HTML5VideoView;->getCurrentState()I

    move-result v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public load(Ljava/lang/String;)V
    .locals 1
    .parameter "url"

    .prologue
    const/4 v0, 0x0

    .line 197
    invoke-direct {p0, p1, v0, v0}, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->ensureHTML5VideoView(Ljava/lang/String;IZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 198
    iget-object v0, p0, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkit/HTML5VideoView;

    invoke-virtual {v0}, Landroid/webkit/HTML5VideoView;->prepareDataAndDisplayMode()V

    .line 200
    :cond_0
    return-void
.end method

.method public loadMetadata(Ljava/lang/String;)V
    .locals 2
    .parameter "url"

    .prologue
    const/4 v0, 0x0

    .line 191
    invoke-direct {p0, p1, v0, v0}, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->ensureHTML5VideoView(Ljava/lang/String;IZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 192
    iget-object v0, p0, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkit/HTML5VideoView;

    iget-object v1, p0, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mProxy:Landroid/webkit/HTML5VideoViewProxy;

    invoke-virtual {v0, v1}, Landroid/webkit/HTML5VideoView;->retrieveMetadata(Landroid/webkit/HTML5VideoViewProxy;)V

    .line 194
    :cond_0
    return-void
.end method

.method public onEnterFullscreen()V
    .locals 1

    .prologue
    .line 248
    iget-object v0, p0, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkit/HTML5VideoView;

    if-eqz v0, :cond_0

    .line 249
    iget-object v0, p0, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkit/HTML5VideoView;

    invoke-virtual {v0}, Landroid/webkit/HTML5VideoView;->onEnterFullscreen()V

    .line 250
    :cond_0
    return-void
.end method

.method public onPrepared()V
    .locals 2

    .prologue
    .line 240
    iget v0, p0, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mCachedVolume:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    .line 241
    iget-object v0, p0, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkit/HTML5VideoView;

    iget v1, p0, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mCachedVolume:F

    invoke-virtual {v0, v1}, Landroid/webkit/HTML5VideoView;->setVolume(F)V

    .line 242
    const/high16 v0, -0x4080

    iput v0, p0, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mCachedVolume:F

    .line 244
    :cond_0
    invoke-virtual {p0}, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->updateVideoLayerPlayerState()V

    .line 245
    return-void
.end method

.method public onStopFullscreen()V
    .locals 1

    .prologue
    .line 253
    iget-object v0, p0, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkit/HTML5VideoView;

    if-eqz v0, :cond_0

    .line 254
    iget-object v0, p0, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkit/HTML5VideoView;

    invoke-virtual {v0}, Landroid/webkit/HTML5VideoView;->onStopFullscreen()V

    .line 255
    :cond_0
    return-void
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 234
    iget-object v0, p0, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkit/HTML5VideoView;

    if-eqz v0, :cond_0

    .line 235
    iget-object v0, p0, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkit/HTML5VideoView;

    invoke-virtual {v0}, Landroid/webkit/HTML5VideoView;->pause()V

    .line 237
    :cond_0
    return-void
.end method

.method public play(Ljava/lang/String;I)V
    .locals 1
    .parameter "url"
    .parameter "time"

    .prologue
    .line 203
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->ensureHTML5VideoView(Ljava/lang/String;IZ)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 204
    iget-object v0, p0, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkit/HTML5VideoView;

    invoke-virtual {v0}, Landroid/webkit/HTML5VideoView;->prepareDataAndDisplayMode()V

    .line 205
    iget-object v0, p0, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkit/HTML5VideoView;

    invoke-virtual {v0, p2}, Landroid/webkit/HTML5VideoView;->seekTo(I)V

    .line 213
    :cond_0
    :goto_0
    return-void

    .line 208
    :cond_1
    iget-object v0, p0, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkit/HTML5VideoView;

    invoke-virtual {v0}, Landroid/webkit/HTML5VideoView;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_0

    .line 209
    iget-object v0, p0, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkit/HTML5VideoView;

    invoke-virtual {v0}, Landroid/webkit/HTML5VideoView;->start()V

    .line 210
    invoke-virtual {p0}, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->updateVideoLayerPlayerState()V

    goto :goto_0
.end method

.method public seek(I)V
    .locals 1
    .parameter "time"

    .prologue
    .line 228
    if-ltz p1, :cond_0

    iget-object v0, p0, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkit/HTML5VideoView;

    if-eqz v0, :cond_0

    .line 229
    iget-object v0, p0, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkit/HTML5VideoView;

    invoke-virtual {v0, p1}, Landroid/webkit/HTML5VideoView;->seekTo(I)V

    .line 231
    :cond_0
    return-void
.end method

.method public setBaseLayer(I)V
    .locals 6
    .parameter "layer"

    .prologue
    .line 129
    iget-object v0, p0, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkit/HTML5VideoView;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 132
    iget-object v0, p0, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkit/HTML5VideoView;

    invoke-virtual {v0}, Landroid/webkit/HTML5VideoView;->attachInlineGlContextIfNeeded()V

    .line 134
    iget-object v0, p0, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkit/HTML5VideoView;

    invoke-virtual {v0}, Landroid/webkit/HTML5VideoView;->getCurrentState()I

    move-result v4

    .line 135
    .local v4, playerState:I
    iget-object v0, p0, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkit/HTML5VideoView;

    invoke-virtual {v0}, Landroid/webkit/HTML5VideoView;->isInlineVideoConfigured()Z

    move-result v0

    if-nez v0, :cond_2

    .line 136
    const/4 v4, 0x6

    .line 140
    :cond_0
    :goto_0
    iget-object v0, p0, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkit/HTML5VideoView;

    invoke-virtual {v0}, Landroid/webkit/HTML5VideoView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    iget-object v1, p0, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->this$0:Landroid/webkit/HTML5VideoViewProxy;

    #getter for: Landroid/webkit/HTML5VideoViewProxy;->mVideoLayerId:I
    invoke-static {v1}, Landroid/webkit/HTML5VideoViewProxy;->access$000(Landroid/webkit/HTML5VideoViewProxy;)I

    move-result v2

    iget-object v1, p0, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkit/HTML5VideoView;

    invoke-virtual {v1}, Landroid/webkit/HTML5VideoView;->getTextureName()I

    move-result v3

    iget-object v1, p0, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->this$0:Landroid/webkit/HTML5VideoViewProxy;

    iget v5, v1, Landroid/webkit/HTML5VideoViewProxy;->mNativePointer:I

    move v1, p1

    #calls: Landroid/webkit/HTML5VideoViewProxy;->nativeSendSurfaceTexture(Landroid/graphics/SurfaceTexture;IIIII)Z
    invoke-static/range {v0 .. v5}, Landroid/webkit/HTML5VideoViewProxy;->access$100(Landroid/graphics/SurfaceTexture;IIIII)Z

    .line 144
    .end local v4           #playerState:I
    :cond_1
    return-void

    .line 137
    .restart local v4       #playerState:I
    :cond_2
    iget-object v0, p0, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkit/HTML5VideoView;

    invoke-virtual {v0}, Landroid/webkit/HTML5VideoView;->getPlayerBuffering()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 138
    const/4 v4, 0x5

    goto :goto_0
.end method

.method public setVolume(F)V
    .locals 1
    .parameter "volume"

    .prologue
    .line 270
    iget-object v0, p0, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkit/HTML5VideoView;

    if-eqz v0, :cond_0

    .line 271
    iget-object v0, p0, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkit/HTML5VideoView;

    invoke-virtual {v0, p1}, Landroid/webkit/HTML5VideoView;->setVolume(F)V

    .line 272
    const/high16 v0, -0x4080

    iput v0, p0, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mCachedVolume:F

    .line 276
    :goto_0
    return-void

    .line 274
    :cond_0
    iput p1, p0, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mCachedVolume:F

    goto :goto_0
.end method

.method public suspend()V
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkit/HTML5VideoView;

    if-eqz v0, :cond_0

    .line 163
    iget-object v0, p0, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkit/HTML5VideoView;

    invoke-virtual {v0}, Landroid/webkit/HTML5VideoView;->pause()V

    .line 164
    invoke-virtual {p0}, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->getCurrentPosition()I

    move-result v0

    iput v0, p0, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mCachedPosition:I

    .line 165
    iget-object v0, p0, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkit/HTML5VideoView;

    invoke-virtual {v0}, Landroid/webkit/HTML5VideoView;->release()V

    .line 166
    invoke-virtual {p0}, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->updateVideoLayerPlayerState()V

    .line 167
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkit/HTML5VideoView;

    .line 171
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->isVideoSelfEnded:Z

    .line 172
    invoke-virtual {p0}, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->end()V

    .line 174
    :cond_0
    return-void
.end method

.method public updateVideoLayerPlayerState()V
    .locals 6

    .prologue
    .line 148
    iget-object v0, p0, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkit/HTML5VideoView;

    if-eqz v0, :cond_1

    .line 149
    iget-object v0, p0, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkit/HTML5VideoView;

    invoke-virtual {v0}, Landroid/webkit/HTML5VideoView;->getCurrentState()I

    move-result v4

    .line 150
    .local v4, playerState:I
    iget-object v0, p0, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkit/HTML5VideoView;

    invoke-virtual {v0}, Landroid/webkit/HTML5VideoView;->isInlineVideoConfigured()Z

    move-result v0

    if-nez v0, :cond_2

    .line 151
    const/4 v4, 0x6

    .line 155
    :cond_0
    :goto_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    iget-object v2, p0, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->this$0:Landroid/webkit/HTML5VideoViewProxy;

    #getter for: Landroid/webkit/HTML5VideoViewProxy;->mVideoLayerId:I
    invoke-static {v2}, Landroid/webkit/HTML5VideoViewProxy;->access$000(Landroid/webkit/HTML5VideoViewProxy;)I

    move-result v2

    iget-object v3, p0, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkit/HTML5VideoView;

    invoke-virtual {v3}, Landroid/webkit/HTML5VideoView;->getTextureName()I

    move-result v3

    iget-object v5, p0, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->this$0:Landroid/webkit/HTML5VideoViewProxy;

    iget v5, v5, Landroid/webkit/HTML5VideoViewProxy;->mNativePointer:I

    #calls: Landroid/webkit/HTML5VideoViewProxy;->nativeSendSurfaceTexture(Landroid/graphics/SurfaceTexture;IIIII)Z
    invoke-static/range {v0 .. v5}, Landroid/webkit/HTML5VideoViewProxy;->access$100(Landroid/graphics/SurfaceTexture;IIIII)Z

    .line 159
    .end local v4           #playerState:I
    :cond_1
    return-void

    .line 152
    .restart local v4       #playerState:I
    :cond_2
    iget-object v0, p0, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkit/HTML5VideoView;

    invoke-virtual {v0}, Landroid/webkit/HTML5VideoView;->getPlayerBuffering()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 153
    const/4 v4, 0x5

    goto :goto_0
.end method

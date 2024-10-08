.class public Lcom/android/camera/module/loader/tempfunction/FunctionLivePhoto;
.super Lcom/android/camera/module/loader/tempfunction/FuncPreviewMetadata;
.source "FunctionLivePhoto.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/camera/module/loader/tempfunction/FuncPreviewMetadata<",
        "Landroid/hardware/camera2/CaptureResult;",
        "Landroid/hardware/camera2/CaptureResult;",
        ">;"
    }
.end annotation


# instance fields
.field private mLivePhotoResultCallbackReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/camera2/Camera2Proxy$LivePhotoResultCallback;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/ref/WeakReference;Ljava/lang/ref/WeakReference;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "moduleReference",
            "mLivePhotoResultCallbackReference"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/camera/module/Module;",
            ">;",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/camera2/Camera2Proxy$LivePhotoResultCallback;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/android/camera/module/loader/tempfunction/FuncPreviewMetadata;-><init>(Ljava/lang/ref/WeakReference;)V

    .line 2
    iput-object p2, p0, Lcom/android/camera/module/loader/tempfunction/FunctionLivePhoto;->mLivePhotoResultCallbackReference:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public onPreviewMetadata(Landroid/hardware/camera2/CaptureResult;)Landroid/hardware/camera2/CaptureResult;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "captureResult"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/android/camera/module/loader/tempfunction/FunctionLivePhoto;->mLivePhotoResultCallbackReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    return-object p1

    .line 3
    :cond_0
    iget-object p0, p0, Lcom/android/camera/module/loader/tempfunction/FunctionLivePhoto;->mLivePhotoResultCallbackReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/camera2/Camera2Proxy$LivePhotoResultCallback;

    .line 4
    invoke-interface {p0}, Lcom/android/camera2/Camera2Proxy$LivePhotoResultCallback;->isLivePhotoStarted()Z

    move-result v0

    if-nez v0, :cond_1

    return-object p1

    .line 5
    :cond_1
    sget-object v0, Landroid/hardware/camera2/CaptureResult;->CONTROL_AE_STATE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p1, v0}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 6
    sget-object v1, Landroid/hardware/camera2/CaptureResult;->CONTROL_AWB_STATE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p1, v1}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 7
    sget-object v2, Landroid/hardware/camera2/CaptureResult;->SENSOR_TIMESTAMP:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p1, v2}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    .line 8
    new-instance v3, Lcom/xiaomi/camera/liveshot/LivePhotoResult;

    invoke-direct {v3}, Lcom/xiaomi/camera/liveshot/LivePhotoResult;-><init>()V

    const/4 v4, 0x0

    if-nez v0, :cond_2

    move v0, v4

    goto :goto_0

    .line 9
    :cond_2
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_0
    invoke-virtual {v3, v0}, Lcom/xiaomi/camera/liveshot/LivePhotoResult;->setAEState(I)V

    if-nez v1, :cond_3

    goto :goto_1

    .line 10
    :cond_3
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    :goto_1
    invoke-virtual {v3, v4}, Lcom/xiaomi/camera/liveshot/LivePhotoResult;->setAWBState(I)V

    if-nez v2, :cond_4

    const-wide/16 v0, 0x0

    goto :goto_2

    .line 11
    :cond_4
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    :goto_2
    invoke-virtual {v3, v0, v1}, Lcom/xiaomi/camera/liveshot/LivePhotoResult;->setTimeStamp(J)V

    .line 12
    invoke-interface {p0}, Lcom/android/camera2/Camera2Proxy$LivePhotoResultCallback;->isGyroStable()Z

    move-result v0

    invoke-virtual {v3, v0}, Lcom/xiaomi/camera/liveshot/LivePhotoResult;->setGyroscropStable(Z)V

    .line 13
    invoke-interface {p0}, Lcom/android/camera2/Camera2Proxy$LivePhotoResultCallback;->getFilterId()I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/xiaomi/camera/liveshot/LivePhotoResult;->setFilterId(I)V

    .line 14
    invoke-interface {p0, v3}, Lcom/android/camera2/Camera2Proxy$LivePhotoResultCallback;->onLivePhotoResultCallback(Lcom/xiaomi/camera/liveshot/LivePhotoResult;)V

    return-object p1
.end method

.method public bridge synthetic onPreviewMetadata(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "captureResult"
        }
    .end annotation

    .line 1
    check-cast p1, Landroid/hardware/camera2/CaptureResult;

    invoke-virtual {p0, p1}, Lcom/android/camera/module/loader/tempfunction/FunctionLivePhoto;->onPreviewMetadata(Landroid/hardware/camera2/CaptureResult;)Landroid/hardware/camera2/CaptureResult;

    move-result-object p0

    return-object p0
.end method

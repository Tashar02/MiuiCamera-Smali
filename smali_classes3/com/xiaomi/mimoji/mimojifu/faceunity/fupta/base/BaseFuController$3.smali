.class public Lcom/xiaomi/mimoji/mimojifu/faceunity/fupta/base/BaseFuController$3;
.super Ljava/lang/Object;
.source "BaseFuController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/mimoji/mimojifu/faceunity/fupta/base/BaseFuController;->refresh()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/xiaomi/mimoji/mimojifu/faceunity/fupta/base/BaseFuController;


# direct methods
.method public constructor <init>(Lcom/xiaomi/mimoji/mimojifu/faceunity/fupta/base/BaseFuController;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/xiaomi/mimoji/mimojifu/faceunity/fupta/base/BaseFuController$3;->this$0:Lcom/xiaomi/mimoji/mimojifu/faceunity/fupta/base/BaseFuController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .line 1
    invoke-static {}, Lcom/faceunity/wrapper/faceunity;->fuOnCameraChange()V

    return-void
.end method

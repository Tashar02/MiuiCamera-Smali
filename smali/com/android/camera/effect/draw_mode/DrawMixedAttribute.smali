.class public Lcom/android/camera/effect/draw_mode/DrawMixedAttribute;
.super Lcom/android/camera/effect/draw_mode/DrawAttribute;
.source "DrawMixedAttribute.java"


# instance fields
.field public mBasicTexture:Lcom/android/gallery3d/ui/BasicTexture;

.field public mHeight:F

.field public mRatio:F

.field public mToColor:I

.field public mWidth:F

.field public mX:F

.field public mY:F


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/ui/BasicTexture;IFFFF)V
    .locals 0
    .annotation build Lcom/android/camera/jacoco/JacocoForceIgnore;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "from",
            "toColor",
            "x",
            "y",
            "w",
            "h"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/android/camera/effect/draw_mode/DrawAttribute;-><init>()V

    .line 2
    iput p3, p0, Lcom/android/camera/effect/draw_mode/DrawMixedAttribute;->mX:F

    .line 3
    iput p4, p0, Lcom/android/camera/effect/draw_mode/DrawMixedAttribute;->mY:F

    .line 4
    iput p5, p0, Lcom/android/camera/effect/draw_mode/DrawMixedAttribute;->mWidth:F

    .line 5
    iput p6, p0, Lcom/android/camera/effect/draw_mode/DrawMixedAttribute;->mHeight:F

    .line 6
    iput-object p1, p0, Lcom/android/camera/effect/draw_mode/DrawMixedAttribute;->mBasicTexture:Lcom/android/gallery3d/ui/BasicTexture;

    .line 7
    iput p2, p0, Lcom/android/camera/effect/draw_mode/DrawMixedAttribute;->mToColor:I

    const/4 p1, 0x3

    .line 8
    iput p1, p0, Lcom/android/camera/effect/draw_mode/DrawAttribute;->mTarget:I

    return-void
.end method

.class public final enum Lcom/android/camera/dualvideo/util/RenderSourceType;
.super Ljava/lang/Enum;
.source "RenderSourceType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/camera/dualvideo/util/RenderSourceType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/camera/dualvideo/util/RenderSourceType;

.field public static final enum MAIN_SOURCE:Lcom/android/camera/dualvideo/util/RenderSourceType;

.field public static final enum REMOTE_SOURCE:Lcom/android/camera/dualvideo/util/RenderSourceType;

.field public static final enum SUB_SOURCE:Lcom/android/camera/dualvideo/util/RenderSourceType;


# instance fields
.field private mIndex:I


# direct methods
.method public static constructor <clinit>()V
    .locals 8

    .line 1
    new-instance v0, Lcom/android/camera/dualvideo/util/RenderSourceType;

    const-string v1, "MAIN_SOURCE"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/camera/dualvideo/util/RenderSourceType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/camera/dualvideo/util/RenderSourceType;->MAIN_SOURCE:Lcom/android/camera/dualvideo/util/RenderSourceType;

    new-instance v1, Lcom/android/camera/dualvideo/util/RenderSourceType;

    const-string v4, "SUB_SOURCE"

    const/4 v5, 0x2

    invoke-direct {v1, v4, v3, v5}, Lcom/android/camera/dualvideo/util/RenderSourceType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/android/camera/dualvideo/util/RenderSourceType;->SUB_SOURCE:Lcom/android/camera/dualvideo/util/RenderSourceType;

    new-instance v4, Lcom/android/camera/dualvideo/util/RenderSourceType;

    const-string v6, "REMOTE_SOURCE"

    const/4 v7, 0x3

    invoke-direct {v4, v6, v5, v7}, Lcom/android/camera/dualvideo/util/RenderSourceType;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/android/camera/dualvideo/util/RenderSourceType;->REMOTE_SOURCE:Lcom/android/camera/dualvideo/util/RenderSourceType;

    new-array v6, v7, [Lcom/android/camera/dualvideo/util/RenderSourceType;

    aput-object v0, v6, v2

    aput-object v1, v6, v3

    aput-object v4, v6, v5

    .line 2
    sput-object v6, Lcom/android/camera/dualvideo/util/RenderSourceType;->$VALUES:[Lcom/android/camera/dualvideo/util/RenderSourceType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x0
        }
        names = {
            "$enum$name",
            "$enum$ordinal",
            "index"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput p3, p0, Lcom/android/camera/dualvideo/util/RenderSourceType;->mIndex:I

    return-void
.end method

.method public static getTagByIndex(I)Lcom/android/camera/dualvideo/util/RenderSourceType;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/android/camera/dualvideo/util/RenderSourceType;->values()[Lcom/android/camera/dualvideo/util/RenderSourceType;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, LOooO0OO/OooO0O0/OooO00o/o00O0OOo/o0OoOoOo/o0ooOOo;

    invoke-direct {v1, p0}, LOooO0OO/OooO0O0/OooO00o/o00O0OOo/o0OoOoOo/o0ooOOo;-><init>(I)V

    .line 2
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    .line 3
    invoke-interface {p0}, Ljava/util/stream/Stream;->findAny()Ljava/util/Optional;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/camera/dualvideo/util/RenderSourceType;

    return-object p0
.end method

.method public static synthetic lambda$getTagByIndex$0(ILcom/android/camera/dualvideo/util/RenderSourceType;)Z
    .locals 0

    .line 1
    invoke-virtual {p1}, Lcom/android/camera/dualvideo/util/RenderSourceType;->getIndex()I

    move-result p1

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/camera/dualvideo/util/RenderSourceType;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    .line 1
    const-class v0, Lcom/android/camera/dualvideo/util/RenderSourceType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/camera/dualvideo/util/RenderSourceType;

    return-object p0
.end method

.method public static values()[Lcom/android/camera/dualvideo/util/RenderSourceType;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/camera/dualvideo/util/RenderSourceType;->$VALUES:[Lcom/android/camera/dualvideo/util/RenderSourceType;

    invoke-virtual {v0}, [Lcom/android/camera/dualvideo/util/RenderSourceType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/camera/dualvideo/util/RenderSourceType;

    return-object v0
.end method


# virtual methods
.method public getIndex()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera/dualvideo/util/RenderSourceType;->mIndex:I

    return p0
.end method

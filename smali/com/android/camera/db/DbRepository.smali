.class public Lcom/android/camera/db/DbRepository;
.super Ljava/lang/Object;
.source "DbRepository.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/db/DbRepository$DbRepositoryContainer;
    }
.end annotation


# instance fields
.field private dbProviderMgr:Lcom/android/camera/db/provider/DbProviderMgr;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Lcom/android/camera/db/provider/DbProviderMgr;

    invoke-direct {v0}, Lcom/android/camera/db/provider/DbProviderMgr;-><init>()V

    iput-object v0, p0, Lcom/android/camera/db/DbRepository;->dbProviderMgr:Lcom/android/camera/db/provider/DbProviderMgr;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/camera/db/DbRepository$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/camera/db/DbRepository;-><init>()V

    return-void
.end method

.method public static dbInnerTask()Lcom/android/camera/db/item/DbInnerTask;
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/camera/db/DbRepository;->provider()Lcom/android/camera/db/provider/DbProvider;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/db/provider/DbProvider;->dbInnerTask()Lcom/android/camera/db/provider/DbProvider$providerDb;

    move-result-object v0

    check-cast v0, Lcom/android/camera/db/item/DbInnerTask;

    return-object v0
.end method

.method public static dbItemSaveTask()Lcom/android/camera/db/item/DbItemSaveTask;
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/camera/db/DbRepository;->provider()Lcom/android/camera/db/provider/DbProvider;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/db/provider/DbProvider;->dbItemSaveTask()Lcom/android/camera/db/provider/DbProvider$providerDb;

    move-result-object v0

    check-cast v0, Lcom/android/camera/db/item/DbItemSaveTask;

    return-object v0
.end method

.method public static getInstance()Lcom/android/camera/db/DbRepository;
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/camera/db/DbRepository$DbRepositoryContainer;->access$100()Lcom/android/camera/db/DbRepository;

    move-result-object v0

    return-object v0
.end method

.method public static provider()Lcom/android/camera/db/provider/DbProvider;
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/camera/db/DbRepository;->getInstance()Lcom/android/camera/db/DbRepository;

    move-result-object v0

    iget-object v0, v0, Lcom/android/camera/db/DbRepository;->dbProviderMgr:Lcom/android/camera/db/provider/DbProviderMgr;

    invoke-virtual {v0}, Lcom/android/camera/db/provider/DbProviderMgr;->provider()Lcom/android/camera/db/provider/DbProvider;

    move-result-object v0

    return-object v0
.end method

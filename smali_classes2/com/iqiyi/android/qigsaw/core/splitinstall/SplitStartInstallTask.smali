.class public final Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitStartInstallTask;
.super Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallTask;
.source "SplitStartInstallTask.java"


# instance fields
.field private final mSessionManager:Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallSessionManager;

.field private final mSessionState:Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallInternalSessionState;


# direct methods
.method public constructor <init>(ILcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstaller;Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallSessionManager;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstaller;",
            "Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallSessionManager;",
            "Ljava/util/List<",
            "Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfo;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p2, p4}, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallTask;-><init>(Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstaller;Ljava/util/Collection;)V

    .line 2
    invoke-interface {p3, p1}, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallSessionManager;->getSessionState(I)Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallInternalSessionState;

    move-result-object p1

    iput-object p1, p0, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitStartInstallTask;->mSessionState:Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallInternalSessionState;

    .line 3
    iput-object p3, p0, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitStartInstallTask;->mSessionManager:Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallSessionManager;

    return-void
.end method

.method private emitSessionStatus()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitStartInstallTask;->mSessionManager:Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallSessionManager;

    iget-object p0, p0, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitStartInstallTask;->mSessionState:Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallInternalSessionState;

    invoke-interface {v0, p0}, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallSessionManager;->emitSessionState(Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallInternalSessionState;)V

    return-void
.end method


# virtual methods
.method public isStartInstallOperation()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public onInstallCompleted(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstaller$InstallResult;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallTask;->onInstallCompleted(Ljava/util/List;)V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 3
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstaller$InstallResult;

    .line 4
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 5
    iget-object v3, v1, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstaller$InstallResult;->addedDexPaths:Ljava/util/List;

    if-eqz v3, :cond_0

    .line 6
    check-cast v3, Ljava/util/ArrayList;

    const-string v4, "added-dex"

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 7
    :cond_0
    iget-object v3, v1, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstaller$InstallResult;->apkFile:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    const-string v4, "apk"

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 8
    iget-object v1, v1, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstaller$InstallResult;->splitName:Ljava/lang/String;

    const-string v3, "splitName"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 9
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 10
    :cond_1
    iget-object p1, p0, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitStartInstallTask;->mSessionState:Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallInternalSessionState;

    invoke-virtual {p1, v0}, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallInternalSessionState;->setSplitFileIntents(Ljava/util/List;)V

    .line 11
    iget-object p1, p0, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitStartInstallTask;->mSessionManager:Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallSessionManager;

    iget-object v0, p0, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitStartInstallTask;->mSessionState:Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallInternalSessionState;

    invoke-virtual {v0}, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallInternalSessionState;->sessionId()I

    move-result v0

    const/16 v1, 0xa

    invoke-interface {p1, v0, v1}, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallSessionManager;->changeSessionState(II)V

    .line 12
    invoke-direct {p0}, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitStartInstallTask;->emitSessionStatus()V

    return-void
.end method

.method public onInstallFailed(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/iqiyi/android/qigsaw/core/splitreport/SplitInstallError;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallTask;->onInstallFailed(Ljava/util/List;)V

    .line 2
    iget-object v0, p0, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitStartInstallTask;->mSessionState:Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallInternalSessionState;

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/iqiyi/android/qigsaw/core/splitreport/SplitInstallError;

    iget p1, p1, Lcom/iqiyi/android/qigsaw/core/splitreport/SplitInstallError;->errorCode:I

    invoke-virtual {v0, p1}, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallInternalSessionState;->setErrorCode(I)V

    .line 3
    iget-object p1, p0, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitStartInstallTask;->mSessionManager:Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallSessionManager;

    iget-object v0, p0, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitStartInstallTask;->mSessionState:Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallInternalSessionState;

    invoke-virtual {v0}, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallInternalSessionState;->sessionId()I

    move-result v0

    const/4 v1, 0x6

    invoke-interface {p1, v0, v1}, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallSessionManager;->changeSessionState(II)V

    .line 4
    invoke-direct {p0}, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitStartInstallTask;->emitSessionStatus()V

    return-void
.end method

.method public onPreInstall()V
    .locals 3

    .line 1
    invoke-super {p0}, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallTask;->onPreInstall()V

    .line 2
    iget-object v0, p0, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitStartInstallTask;->mSessionManager:Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallSessionManager;

    iget-object v1, p0, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitStartInstallTask;->mSessionState:Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallInternalSessionState;

    invoke-virtual {v1}, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallInternalSessionState;->sessionId()I

    move-result v1

    const/4 v2, 0x4

    invoke-interface {v0, v1, v2}, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitInstallSessionManager;->changeSessionState(II)V

    .line 3
    invoke-direct {p0}, Lcom/iqiyi/android/qigsaw/core/splitinstall/SplitStartInstallTask;->emitSessionStatus()V

    return-void
.end method

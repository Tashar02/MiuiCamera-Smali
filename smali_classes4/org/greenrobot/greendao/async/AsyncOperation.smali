.class public Lorg/greenrobot/greendao/async/AsyncOperation;
.super Ljava/lang/Object;
.source "AsyncOperation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;
    }
.end annotation


# static fields
.field public static final FLAG_MERGE_TX:I = 0x1

.field public static final FLAG_STOP_QUEUE_ON_EXCEPTION:I = 0x2

.field public static final FLAG_TRACK_CREATOR_STACKTRACE:I = 0x4


# instance fields
.field private volatile completed:Z

.field public final creatorStacktrace:Ljava/lang/Exception;

.field public final dao:Lorg/greenrobot/greendao/AbstractDao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/greenrobot/greendao/AbstractDao<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final database:Lorg/greenrobot/greendao/database/Database;

.field public final flags:I

.field public volatile mergedOperationsCount:I

.field public final parameter:Ljava/lang/Object;

.field public volatile result:Ljava/lang/Object;

.field public sequenceNumber:I

.field public volatile throwable:Ljava/lang/Throwable;

.field public volatile timeCompleted:J

.field public volatile timeStarted:J

.field public final type:Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;


# direct methods
.method public constructor <init>(Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;Lorg/greenrobot/greendao/AbstractDao;Lorg/greenrobot/greendao/database/Database;Ljava/lang/Object;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "type",
            "dao",
            "database",
            "parameter",
            "flags"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;",
            "Lorg/greenrobot/greendao/AbstractDao<",
            "**>;",
            "Lorg/greenrobot/greendao/database/Database;",
            "Ljava/lang/Object;",
            "I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lorg/greenrobot/greendao/async/AsyncOperation;->type:Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;

    .line 3
    iput p5, p0, Lorg/greenrobot/greendao/async/AsyncOperation;->flags:I

    .line 4
    iput-object p2, p0, Lorg/greenrobot/greendao/async/AsyncOperation;->dao:Lorg/greenrobot/greendao/AbstractDao;

    .line 5
    iput-object p3, p0, Lorg/greenrobot/greendao/async/AsyncOperation;->database:Lorg/greenrobot/greendao/database/Database;

    .line 6
    iput-object p4, p0, Lorg/greenrobot/greendao/async/AsyncOperation;->parameter:Ljava/lang/Object;

    and-int/lit8 p1, p5, 0x4

    if-eqz p1, :cond_0

    .line 7
    new-instance p1, Ljava/lang/Exception;

    const-string p2, "AsyncOperation was created here"

    invoke-direct {p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lorg/greenrobot/greendao/async/AsyncOperation;->creatorStacktrace:Ljava/lang/Exception;

    return-void
.end method


# virtual methods
.method public getCreatorStacktrace()Ljava/lang/Exception;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/greenrobot/greendao/async/AsyncOperation;->creatorStacktrace:Ljava/lang/Exception;

    return-object p0
.end method

.method public getDatabase()Lorg/greenrobot/greendao/database/Database;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/greenrobot/greendao/async/AsyncOperation;->database:Lorg/greenrobot/greendao/database/Database;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lorg/greenrobot/greendao/async/AsyncOperation;->dao:Lorg/greenrobot/greendao/AbstractDao;

    invoke-virtual {p0}, Lorg/greenrobot/greendao/AbstractDao;->getDatabase()Lorg/greenrobot/greendao/database/Database;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getDuration()J
    .locals 4

    .line 1
    iget-wide v0, p0, Lorg/greenrobot/greendao/async/AsyncOperation;->timeCompleted:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 2
    iget-wide v0, p0, Lorg/greenrobot/greendao/async/AsyncOperation;->timeCompleted:J

    iget-wide v2, p0, Lorg/greenrobot/greendao/async/AsyncOperation;->timeStarted:J

    sub-long/2addr v0, v2

    return-wide v0

    .line 3
    :cond_0
    new-instance p0, Lorg/greenrobot/greendao/DaoException;

    const-string v0, "This operation did not yet complete"

    invoke-direct {p0, v0}, Lorg/greenrobot/greendao/DaoException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getMergedOperationsCount()I
    .locals 0

    .line 1
    iget p0, p0, Lorg/greenrobot/greendao/async/AsyncOperation;->mergedOperationsCount:I

    return p0
.end method

.method public getParameter()Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/greenrobot/greendao/async/AsyncOperation;->parameter:Ljava/lang/Object;

    return-object p0
.end method

.method public declared-synchronized getResult()Ljava/lang/Object;
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lorg/greenrobot/greendao/async/AsyncOperation;->completed:Z

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lorg/greenrobot/greendao/async/AsyncOperation;->waitForCompletion()Ljava/lang/Object;

    .line 3
    :cond_0
    iget-object v0, p0, Lorg/greenrobot/greendao/async/AsyncOperation;->throwable:Ljava/lang/Throwable;

    if-nez v0, :cond_1

    .line 4
    iget-object v0, p0, Lorg/greenrobot/greendao/async/AsyncOperation;->result:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 5
    :cond_1
    :try_start_1
    new-instance v0, Lorg/greenrobot/greendao/async/AsyncDaoException;

    iget-object v1, p0, Lorg/greenrobot/greendao/async/AsyncOperation;->throwable:Ljava/lang/Throwable;

    invoke-direct {v0, p0, v1}, Lorg/greenrobot/greendao/async/AsyncDaoException;-><init>(Lorg/greenrobot/greendao/async/AsyncOperation;Ljava/lang/Throwable;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getSequenceNumber()I
    .locals 0

    .line 1
    iget p0, p0, Lorg/greenrobot/greendao/async/AsyncOperation;->sequenceNumber:I

    return p0
.end method

.method public getThrowable()Ljava/lang/Throwable;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/greenrobot/greendao/async/AsyncOperation;->throwable:Ljava/lang/Throwable;

    return-object p0
.end method

.method public getTimeCompleted()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lorg/greenrobot/greendao/async/AsyncOperation;->timeCompleted:J

    return-wide v0
.end method

.method public getTimeStarted()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lorg/greenrobot/greendao/async/AsyncOperation;->timeStarted:J

    return-wide v0
.end method

.method public getType()Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/greenrobot/greendao/async/AsyncOperation;->type:Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;

    return-object p0
.end method

.method public isCompleted()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lorg/greenrobot/greendao/async/AsyncOperation;->completed:Z

    return p0
.end method

.method public isCompletedSucessfully()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lorg/greenrobot/greendao/async/AsyncOperation;->completed:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lorg/greenrobot/greendao/async/AsyncOperation;->throwable:Ljava/lang/Throwable;

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isFailed()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/greenrobot/greendao/async/AsyncOperation;->throwable:Ljava/lang/Throwable;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isMergeTx()Z
    .locals 1

    .line 1
    iget p0, p0, Lorg/greenrobot/greendao/async/AsyncOperation;->flags:I

    const/4 v0, 0x1

    and-int/2addr p0, v0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isMergeableWith(Lorg/greenrobot/greendao/async/AsyncOperation;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "other"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p0}, Lorg/greenrobot/greendao/async/AsyncOperation;->isMergeTx()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lorg/greenrobot/greendao/async/AsyncOperation;->isMergeTx()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/greenrobot/greendao/async/AsyncOperation;->getDatabase()Lorg/greenrobot/greendao/database/Database;

    move-result-object p0

    invoke-virtual {p1}, Lorg/greenrobot/greendao/async/AsyncOperation;->getDatabase()Lorg/greenrobot/greendao/database/Database;

    move-result-object p1

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public reset()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 1
    iput-wide v0, p0, Lorg/greenrobot/greendao/async/AsyncOperation;->timeStarted:J

    .line 2
    iput-wide v0, p0, Lorg/greenrobot/greendao/async/AsyncOperation;->timeCompleted:J

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lorg/greenrobot/greendao/async/AsyncOperation;->completed:Z

    const/4 v1, 0x0

    .line 4
    iput-object v1, p0, Lorg/greenrobot/greendao/async/AsyncOperation;->throwable:Ljava/lang/Throwable;

    .line 5
    iput-object v1, p0, Lorg/greenrobot/greendao/async/AsyncOperation;->result:Ljava/lang/Object;

    .line 6
    iput v0, p0, Lorg/greenrobot/greendao/async/AsyncOperation;->mergedOperationsCount:I

    return-void
.end method

.method public declared-synchronized setCompleted()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x1

    .line 1
    :try_start_0
    iput-boolean v0, p0, Lorg/greenrobot/greendao/async/AsyncOperation;->completed:Z

    .line 2
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setThrowable(Ljava/lang/Throwable;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "throwable"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lorg/greenrobot/greendao/async/AsyncOperation;->throwable:Ljava/lang/Throwable;

    return-void
.end method

.method public declared-synchronized waitForCompletion()Ljava/lang/Object;
    .locals 3

    monitor-enter p0

    .line 1
    :goto_0
    :try_start_0
    iget-boolean v0, p0, Lorg/greenrobot/greendao/async/AsyncOperation;->completed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 2
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 3
    :try_start_2
    new-instance v1, Lorg/greenrobot/greendao/DaoException;

    const-string v2, "Interrupted while waiting for operation to complete"

    invoke-direct {v1, v2, v0}, Lorg/greenrobot/greendao/DaoException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 4
    :cond_0
    iget-object v0, p0, Lorg/greenrobot/greendao/async/AsyncOperation;->result:Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized waitForCompletion(I)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "maxMillis"
        }
    .end annotation

    monitor-enter p0

    .line 5
    :try_start_0
    iget-boolean v0, p0, Lorg/greenrobot/greendao/async/AsyncOperation;->completed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    int-to-long v0, p1

    .line 6
    :try_start_1
    invoke-virtual {p0, v0, v1}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 7
    :try_start_2
    new-instance v0, Lorg/greenrobot/greendao/DaoException;

    const-string v1, "Interrupted while waiting for operation to complete"

    invoke-direct {v0, v1, p1}, Lorg/greenrobot/greendao/DaoException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 8
    :cond_0
    :goto_0
    iget-boolean p1, p0, Lorg/greenrobot/greendao/async/AsyncOperation;->completed:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

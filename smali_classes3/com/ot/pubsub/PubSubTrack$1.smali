.class public final Lcom/ot/pubsub/PubSubTrack$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/ot/pubsub/PubSubTrack$1;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/ot/pubsub/PubSubTrack$1;->a:Z

    invoke-static {p0}, Lcom/ot/pubsub/g/i;->a(Z)V

    return-void
.end method

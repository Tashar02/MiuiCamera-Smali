.class public Lcom/bumptech/glide/request/transition/ViewTransition;
.super Ljava/lang/Object;
.source "ViewTransition.java"

# interfaces
.implements Lcom/bumptech/glide/request/transition/Transition;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/request/transition/ViewTransition$ViewTransitionAnimationFactory;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/request/transition/Transition<",
        "TR;>;"
    }
.end annotation


# instance fields
.field private final viewTransitionAnimationFactory:Lcom/bumptech/glide/request/transition/ViewTransition$ViewTransitionAnimationFactory;


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/request/transition/ViewTransition$ViewTransitionAnimationFactory;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/bumptech/glide/request/transition/ViewTransition;->viewTransitionAnimationFactory:Lcom/bumptech/glide/request/transition/ViewTransition$ViewTransitionAnimationFactory;

    return-void
.end method


# virtual methods
.method public transition(Ljava/lang/Object;Lcom/bumptech/glide/request/transition/Transition$ViewAdapter;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;",
            "Lcom/bumptech/glide/request/transition/Transition$ViewAdapter;",
            ")Z"
        }
    .end annotation

    .line 1
    invoke-interface {p2}, Lcom/bumptech/glide/request/transition/Transition$ViewAdapter;->getView()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    .line 3
    iget-object p0, p0, Lcom/bumptech/glide/request/transition/ViewTransition;->viewTransitionAnimationFactory:Lcom/bumptech/glide/request/transition/ViewTransition$ViewTransitionAnimationFactory;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-interface {p0, p2}, Lcom/bumptech/glide/request/transition/ViewTransition$ViewTransitionAnimationFactory;->build(Landroid/content/Context;)Landroid/view/animation/Animation;

    move-result-object p0

    .line 4
    invoke-virtual {p1, p0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

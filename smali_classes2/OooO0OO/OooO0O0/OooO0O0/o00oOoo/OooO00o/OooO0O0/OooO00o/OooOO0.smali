.class public final synthetic LOooO0OO/OooO0O0/OooO0O0/o00oOoo/OooO00o/OooO0O0/OooO00o/OooOO0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/camera/fragment/modeselector/menu/FragmentBottomMenuBase$ItemCreator;


# instance fields
.field public final synthetic OooO00o:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LOooO0OO/OooO0O0/OooO0O0/o00oOoo/OooO00o/OooO0O0/OooO00o/OooOO0;->OooO00o:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final create(Landroid/view/ViewGroup;Z)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, LOooO0OO/OooO0O0/OooO0O0/o00oOoo/OooO00o/OooO0O0/OooO00o/OooOO0;->OooO00o:Landroid/content/Context;

    invoke-static {p0, p1, p2}, Lcom/android/camera2/compat/theme/custom/cv/MiThemeOperationTabCV;->lambda$getMenuItemCreator$0(Landroid/content/Context;Landroid/view/ViewGroup;Z)Landroid/widget/TextView;

    move-result-object p0

    return-object p0
.end method

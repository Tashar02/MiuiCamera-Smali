.class public Lmiuix/preference/DropDownPreference$PreferenceCheckedProvider;
.super Ljava/lang/Object;
.source "DropDownPreference.java"

# interfaces
.implements Lmiuix/appcompat/internal/adapter/SpinnerCheckableArrayAdapter$CheckedStateProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/preference/DropDownPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PreferenceCheckedProvider"
.end annotation


# instance fields
.field private mAdapter:Landroid/widget/ArrayAdapter;

.field private mPreference:Lmiuix/preference/DropDownPreference;


# direct methods
.method public constructor <init>(Lmiuix/preference/DropDownPreference;Landroid/widget/ArrayAdapter;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lmiuix/preference/DropDownPreference$PreferenceCheckedProvider;->mPreference:Lmiuix/preference/DropDownPreference;

    .line 3
    iput-object p2, p0, Lmiuix/preference/DropDownPreference$PreferenceCheckedProvider;->mAdapter:Landroid/widget/ArrayAdapter;

    return-void
.end method


# virtual methods
.method public isChecked(I)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lmiuix/preference/DropDownPreference$PreferenceCheckedProvider;->mPreference:Lmiuix/preference/DropDownPreference;

    invoke-virtual {v0}, Lmiuix/preference/DropDownPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lmiuix/preference/DropDownPreference$PreferenceCheckedProvider;->mPreference:Lmiuix/preference/DropDownPreference;

    invoke-static {p0}, Lmiuix/preference/DropDownPreference;->access$000(Lmiuix/preference/DropDownPreference;)[Ljava/lang/CharSequence;

    move-result-object p0

    aget-object p0, p0, p1

    invoke-static {v0, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

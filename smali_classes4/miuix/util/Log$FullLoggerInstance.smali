.class public Lmiuix/util/Log$FullLoggerInstance;
.super Ljava/lang/Object;
.source "Log.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/util/Log;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FullLoggerInstance"
.end annotation


# static fields
.field public static final INSTANCE:Lmiuix/util/Log$Facade;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lmiuix/util/Log$FullFacade;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lmiuix/util/Log$FullFacade;-><init>(Lmiuix/util/Log$1;)V

    sput-object v0, Lmiuix/util/Log$FullLoggerInstance;->INSTANCE:Lmiuix/util/Log$Facade;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.class public final enum Lorg/apache/poi/openxml4j/opc/CertificateEmbeddingOption;
.super Ljava/lang/Enum;
.source "CertificateEmbeddingOption.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/poi/openxml4j/opc/CertificateEmbeddingOption;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/poi/openxml4j/opc/CertificateEmbeddingOption;

.field public static final enum IN_CERTIFICATE_PART:Lorg/apache/poi/openxml4j/opc/CertificateEmbeddingOption;

.field public static final enum IN_SIGNATURE_PART:Lorg/apache/poi/openxml4j/opc/CertificateEmbeddingOption;

.field public static final enum NOT_EMBEDDED:Lorg/apache/poi/openxml4j/opc/CertificateEmbeddingOption;


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Lorg/apache/poi/openxml4j/opc/CertificateEmbeddingOption;

    const-string v1, "IN_CERTIFICATE_PART"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/apache/poi/openxml4j/opc/CertificateEmbeddingOption;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/poi/openxml4j/opc/CertificateEmbeddingOption;->IN_CERTIFICATE_PART:Lorg/apache/poi/openxml4j/opc/CertificateEmbeddingOption;

    .line 2
    new-instance v1, Lorg/apache/poi/openxml4j/opc/CertificateEmbeddingOption;

    const-string v3, "IN_SIGNATURE_PART"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lorg/apache/poi/openxml4j/opc/CertificateEmbeddingOption;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/apache/poi/openxml4j/opc/CertificateEmbeddingOption;->IN_SIGNATURE_PART:Lorg/apache/poi/openxml4j/opc/CertificateEmbeddingOption;

    .line 3
    new-instance v3, Lorg/apache/poi/openxml4j/opc/CertificateEmbeddingOption;

    const-string v5, "NOT_EMBEDDED"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lorg/apache/poi/openxml4j/opc/CertificateEmbeddingOption;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lorg/apache/poi/openxml4j/opc/CertificateEmbeddingOption;->NOT_EMBEDDED:Lorg/apache/poi/openxml4j/opc/CertificateEmbeddingOption;

    const/4 v5, 0x3

    new-array v5, v5, [Lorg/apache/poi/openxml4j/opc/CertificateEmbeddingOption;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 4
    sput-object v5, Lorg/apache/poi/openxml4j/opc/CertificateEmbeddingOption;->$VALUES:[Lorg/apache/poi/openxml4j/opc/CertificateEmbeddingOption;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/poi/openxml4j/opc/CertificateEmbeddingOption;
    .locals 1

    .line 1
    const-class v0, Lorg/apache/poi/openxml4j/opc/CertificateEmbeddingOption;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/openxml4j/opc/CertificateEmbeddingOption;

    return-object p0
.end method

.method public static values()[Lorg/apache/poi/openxml4j/opc/CertificateEmbeddingOption;
    .locals 1

    .line 1
    sget-object v0, Lorg/apache/poi/openxml4j/opc/CertificateEmbeddingOption;->$VALUES:[Lorg/apache/poi/openxml4j/opc/CertificateEmbeddingOption;

    invoke-virtual {v0}, [Lorg/apache/poi/openxml4j/opc/CertificateEmbeddingOption;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/poi/openxml4j/opc/CertificateEmbeddingOption;

    return-object v0
.end method

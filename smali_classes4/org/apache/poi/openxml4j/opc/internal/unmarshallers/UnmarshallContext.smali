.class public final Lorg/apache/poi/openxml4j/opc/internal/unmarshallers/UnmarshallContext;
.super Ljava/lang/Object;
.source "UnmarshallContext.java"


# instance fields
.field private _package:Lorg/apache/poi/openxml4j/opc/OPCPackage;

.field private partName:Lorg/apache/poi/openxml4j/opc/PackagePartName;

.field private zipEntry:Ljava/util/zip/ZipEntry;


# direct methods
.method public constructor <init>(Lorg/apache/poi/openxml4j/opc/OPCPackage;Lorg/apache/poi/openxml4j/opc/PackagePartName;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lorg/apache/poi/openxml4j/opc/internal/unmarshallers/UnmarshallContext;->_package:Lorg/apache/poi/openxml4j/opc/OPCPackage;

    .line 3
    iput-object p2, p0, Lorg/apache/poi/openxml4j/opc/internal/unmarshallers/UnmarshallContext;->partName:Lorg/apache/poi/openxml4j/opc/PackagePartName;

    return-void
.end method


# virtual methods
.method public getPackage()Lorg/apache/poi/openxml4j/opc/OPCPackage;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/apache/poi/openxml4j/opc/internal/unmarshallers/UnmarshallContext;->_package:Lorg/apache/poi/openxml4j/opc/OPCPackage;

    return-object p0
.end method

.method public getPartName()Lorg/apache/poi/openxml4j/opc/PackagePartName;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/apache/poi/openxml4j/opc/internal/unmarshallers/UnmarshallContext;->partName:Lorg/apache/poi/openxml4j/opc/PackagePartName;

    return-object p0
.end method

.method public getZipEntry()Ljava/util/zip/ZipEntry;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/apache/poi/openxml4j/opc/internal/unmarshallers/UnmarshallContext;->zipEntry:Ljava/util/zip/ZipEntry;

    return-object p0
.end method

.method public setPackage(Lorg/apache/poi/openxml4j/opc/OPCPackage;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/apache/poi/openxml4j/opc/internal/unmarshallers/UnmarshallContext;->_package:Lorg/apache/poi/openxml4j/opc/OPCPackage;

    return-void
.end method

.method public setPartName(Lorg/apache/poi/openxml4j/opc/PackagePartName;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/apache/poi/openxml4j/opc/internal/unmarshallers/UnmarshallContext;->partName:Lorg/apache/poi/openxml4j/opc/PackagePartName;

    return-void
.end method

.method public setZipEntry(Ljava/util/zip/ZipEntry;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/apache/poi/openxml4j/opc/internal/unmarshallers/UnmarshallContext;->zipEntry:Ljava/util/zip/ZipEntry;

    return-void
.end method

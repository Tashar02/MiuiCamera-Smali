.class public Lorg/apache/xmlbeans/impl/schema/FileResourceLoader;
.super Ljava/lang/Object;
.source "FileResourceLoader.java"

# interfaces
.implements Lorg/apache/xmlbeans/ResourceLoader;


# instance fields
.field private _directory:Ljava/io/File;

.field private _zipfile:Ljava/util/zip/ZipFile;


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iput-object p1, p0, Lorg/apache/xmlbeans/impl/schema/FileResourceLoader;->_directory:Ljava/io/File;

    goto :goto_0

    .line 4
    :cond_0
    new-instance v0, Ljava/util/zip/ZipFile;

    invoke-direct {v0, p1}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/schema/FileResourceLoader;->_zipfile:Ljava/util/zip/ZipFile;

    :goto_0
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/FileResourceLoader;->_zipfile:Ljava/util/zip/ZipFile;

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    invoke-virtual {v0}, Ljava/util/zip/ZipFile;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lorg/apache/xmlbeans/impl/schema/FileResourceLoader;->_zipfile:Ljava/util/zip/ZipFile;

    :cond_0
    return-void
.end method

.method public getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 3

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iget-object v1, p0, Lorg/apache/xmlbeans/impl/schema/FileResourceLoader;->_zipfile:Ljava/util/zip/ZipFile;

    if-eqz v1, :cond_1

    .line 2
    invoke-virtual {v1, p1}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object p1

    if-nez p1, :cond_0

    return-object v0

    .line 3
    :cond_0
    iget-object p0, p0, Lorg/apache/xmlbeans/impl/schema/FileResourceLoader;->_zipfile:Ljava/util/zip/ZipFile;

    invoke-virtual {p0, p1}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object p0

    return-object p0

    .line 4
    :cond_1
    new-instance v1, Ljava/io/FileInputStream;

    new-instance v2, Ljava/io/File;

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/schema/FileResourceLoader;->_directory:Ljava/io/File;

    invoke-direct {v2, p0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    return-object v0
.end method

.class public Lorg/dom4j/io/DocumentInputSource;
.super Lorg/xml/sax/InputSource;
.source "DocumentInputSource.java"


# instance fields
.field private document:Lorg/dom4j/Document;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/xml/sax/InputSource;-><init>()V

    return-void
.end method

.method public constructor <init>(Lorg/dom4j/Document;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lorg/xml/sax/InputSource;-><init>()V

    .line 3
    iput-object p1, p0, Lorg/dom4j/io/DocumentInputSource;->document:Lorg/dom4j/Document;

    .line 4
    invoke-interface {p1}, Lorg/dom4j/Node;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/xml/sax/InputSource;->setSystemId(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getCharacterStream()Ljava/io/Reader;
    .locals 3

    .line 1
    :try_start_0
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 2
    new-instance v1, Lorg/dom4j/io/XMLWriter;

    invoke-direct {v1, v0}, Lorg/dom4j/io/XMLWriter;-><init>(Ljava/io/Writer;)V

    .line 3
    iget-object v2, p0, Lorg/dom4j/io/DocumentInputSource;->document:Lorg/dom4j/Document;

    invoke-virtual {v1, v2}, Lorg/dom4j/io/XMLWriter;->write(Lorg/dom4j/Document;)V

    .line 4
    invoke-virtual {v1}, Lorg/dom4j/io/XMLWriter;->flush()V

    .line 5
    new-instance v1, Ljava/io/StringReader;

    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v0

    .line 6
    new-instance v1, Lorg/dom4j/io/DocumentInputSource$1;

    invoke-direct {v1, p0, v0}, Lorg/dom4j/io/DocumentInputSource$1;-><init>(Lorg/dom4j/io/DocumentInputSource;Ljava/io/IOException;)V

    return-object v1
.end method

.method public getDocument()Lorg/dom4j/Document;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/dom4j/io/DocumentInputSource;->document:Lorg/dom4j/Document;

    return-object p0
.end method

.method public setCharacterStream(Ljava/io/Reader;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .line 1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public setDocument(Lorg/dom4j/Document;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/dom4j/io/DocumentInputSource;->document:Lorg/dom4j/Document;

    .line 2
    invoke-interface {p1}, Lorg/dom4j/Node;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/xml/sax/InputSource;->setSystemId(Ljava/lang/String;)V

    return-void
.end method

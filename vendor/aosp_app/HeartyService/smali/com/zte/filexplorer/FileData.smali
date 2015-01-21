.class public Lcom/zte/filexplorer/FileData;
.super Lcom/zte/heartyservice/common/datatype/CommonListItem;
.source "FileData.java"


# instance fields
.field private isChecked:Z

.field private lastModified:Ljava/util/Date;

.field private name:Ljava/lang/String;

.field private path:Ljava/io/File;

.field private size:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/zte/heartyservice/common/datatype/CommonListItem;-><init>()V

    .line 17
    new-instance v0, Ljava/io/File;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/zte/filexplorer/FileData;->path:Ljava/io/File;

    .line 18
    new-instance v0, Ljava/lang/String;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/zte/filexplorer/FileData;->name:Ljava/lang/String;

    .line 19
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/zte/filexplorer/FileData;->size:J

    .line 20
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, p0, Lcom/zte/filexplorer/FileData;->lastModified:Ljava/util/Date;

    .line 21
    return-void
.end method

.method public constructor <init>(Ljava/io/File;Ljava/lang/String;JLjava/util/Date;)V
    .locals 0
    .parameter "path"
    .parameter "name"
    .parameter "size"
    .parameter "lastModified"

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/zte/heartyservice/common/datatype/CommonListItem;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/zte/filexplorer/FileData;->path:Ljava/io/File;

    .line 35
    iput-object p2, p0, Lcom/zte/filexplorer/FileData;->name:Ljava/lang/String;

    .line 36
    iput-wide p3, p0, Lcom/zte/filexplorer/FileData;->size:J

    .line 37
    iput-object p5, p0, Lcom/zte/filexplorer/FileData;->lastModified:Ljava/util/Date;

    .line 38
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .parameter "file"

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/zte/heartyservice/common/datatype/CommonListItem;-><init>()V

    .line 24
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/zte/filexplorer/FileData;->path:Ljava/io/File;

    .line 25
    const-string v0, ".."

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 26
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/zte/filexplorer/FileData;->name:Ljava/lang/String;

    .line 28
    :goto_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/zte/filexplorer/FileData;->size:J

    .line 29
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, p0, Lcom/zte/filexplorer/FileData;->lastModified:Ljava/util/Date;

    .line 30
    return-void

    .line 27
    :cond_0
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/zte/filexplorer/FileData;->path:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/zte/filexplorer/FileData;->name:Ljava/lang/String;

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;JD)V
    .locals 3
    .parameter "file"
    .parameter "fileSize"
    .parameter "milliseconds"

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/zte/heartyservice/common/datatype/CommonListItem;-><init>()V

    .line 41
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/zte/filexplorer/FileData;->path:Ljava/io/File;

    .line 42
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/zte/filexplorer/FileData;->path:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/zte/filexplorer/FileData;->name:Ljava/lang/String;

    .line 43
    iput-wide p2, p0, Lcom/zte/filexplorer/FileData;->size:J

    .line 44
    new-instance v0, Ljava/util/Date;

    double-to-long v1, p4

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    iput-object v0, p0, Lcom/zte/filexplorer/FileData;->lastModified:Ljava/util/Date;

    .line 45
    return-void
.end method


# virtual methods
.method public getFile()Ljava/io/File;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/zte/filexplorer/FileData;->path:Ljava/io/File;

    return-object v0
.end method

.method public getLastModified()Ljava/util/Date;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/zte/filexplorer/FileData;->lastModified:Ljava/util/Date;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/zte/filexplorer/FileData;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/zte/filexplorer/FileData;->path:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSize()J
    .locals 2

    .prologue
    .line 69
    iget-wide v0, p0, Lcom/zte/filexplorer/FileData;->size:J

    return-wide v0
.end method

.method public isChecked()Z
    .locals 1

    .prologue
    .line 85
    iget-boolean v0, p0, Lcom/zte/filexplorer/FileData;->isChecked:Z

    return v0
.end method

.method public setChecked(Z)V
    .locals 0
    .parameter "isChecked"

    .prologue
    .line 89
    iput-boolean p1, p0, Lcom/zte/filexplorer/FileData;->isChecked:Z

    .line 90
    return-void
.end method

.method public setFile(Ljava/io/File;)V
    .locals 0
    .parameter "path"

    .prologue
    .line 53
    iput-object p1, p0, Lcom/zte/filexplorer/FileData;->path:Ljava/io/File;

    .line 54
    return-void
.end method

.method public setLastModified(Ljava/util/Date;)V
    .locals 0
    .parameter "lastModified"

    .prologue
    .line 81
    iput-object p1, p0, Lcom/zte/filexplorer/FileData;->lastModified:Ljava/util/Date;

    .line 82
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 65
    iput-object p1, p0, Lcom/zte/filexplorer/FileData;->name:Ljava/lang/String;

    .line 66
    return-void
.end method

.method public setSize(J)V
    .locals 0
    .parameter "size"

    .prologue
    .line 73
    iput-wide p1, p0, Lcom/zte/filexplorer/FileData;->size:J

    .line 74
    return-void
.end method

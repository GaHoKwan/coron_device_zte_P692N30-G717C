.class public Lcom/zte/heartyservice/privacy/OtherFilesItem;
.super Lcom/zte/heartyservice/common/datatype/CommonListItem;
.source "OtherFilesItem.java"


# static fields
.field public static final TYPE_DIR:I = 0x0

.field public static final TYPE_FILE:I = 0x1


# instance fields
.field public checked:Z

.field public hs:I

.field public id:I

.field public itemType:I

.field public keyData:[B

.field public nn:Ljava/lang/String;

.field public op:Ljava/lang/String;

.field public ot:J

.field public tp:I

.field public uuid:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;I)V
    .locals 1
    .parameter "id"
    .parameter "name"
    .parameter "uuid"
    .parameter "itemType"

    .prologue
    .line 26
    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Lcom/zte/heartyservice/common/datatype/CommonListItem;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 15
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zte/heartyservice/privacy/OtherFilesItem;->checked:Z

    .line 27
    iput p1, p0, Lcom/zte/heartyservice/privacy/OtherFilesItem;->id:I

    .line 28
    iput-object p3, p0, Lcom/zte/heartyservice/privacy/OtherFilesItem;->uuid:Ljava/lang/String;

    .line 29
    iput p4, p0, Lcom/zte/heartyservice/privacy/OtherFilesItem;->itemType:I

    .line 30
    return-void
.end method


# virtual methods
.method public isEncryFileExist()Z
    .locals 3

    .prologue
    .line 33
    invoke-static {}, Lcom/zte/heartyservice/common/utils/SDUtils;->getPDPath()Ljava/lang/String;

    move-result-object v1

    .line 34
    .local v1, pdPath:Ljava/lang/String;
    if-nez v1, :cond_0

    .line 35
    const/4 v2, 0x0

    .line 38
    :goto_0
    return v2

    .line 37
    :cond_0
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lcom/zte/heartyservice/privacy/OtherFilesItem;->nn:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    goto :goto_0
.end method

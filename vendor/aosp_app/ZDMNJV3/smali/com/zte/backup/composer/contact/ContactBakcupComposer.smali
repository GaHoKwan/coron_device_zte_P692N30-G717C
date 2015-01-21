.class public Lcom/zte/backup/composer/contact/ContactBakcupComposer;
.super Lcom/zte/backup/composer/Composer;
.source "ContactBakcupComposer.java"


# static fields
.field private static LOG_TAG:Ljava/lang/String;


# instance fields
.field private pbExport:Lcom/zte/backup/format/vxx/vcard/PhoneBookExport;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const-string v0, "ContactBakcupComposer"

    sput-object v0, Lcom/zte/backup/composer/contact/ContactBakcupComposer;->LOG_TAG:Ljava/lang/String;

    .line 22
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .parameter "context"
    .parameter "backupPath"

    .prologue
    const/4 v1, 0x0

    .line 28
    invoke-direct {p0, p1}, Lcom/zte/backup/composer/Composer;-><init>(Landroid/content/Context;)V

    .line 25
    iput-object v1, p0, Lcom/zte/backup/composer/contact/ContactBakcupComposer;->pbExport:Lcom/zte/backup/format/vxx/vcard/PhoneBookExport;

    .line 29
    invoke-virtual {p0, p2}, Lcom/zte/backup/composer/contact/ContactBakcupComposer;->setOutPath(Ljava/lang/String;)V

    .line 30
    sget-object v0, Lcom/zte/backup/composer/DataType;->PHONEBOOK:Lcom/zte/backup/composer/DataType;

    iput-object v0, p0, Lcom/zte/backup/composer/contact/ContactBakcupComposer;->type:Lcom/zte/backup/composer/DataType;

    .line 31
    new-instance v0, Lcom/zte/backup/format/vxx/vcard/PhoneBookExport;

    invoke-direct {v0, p0, v1, v1}, Lcom/zte/backup/format/vxx/vcard/PhoneBookExport;-><init>(Lcom/zte/backup/composer/Composer;Ljava/lang/String;Ljava/util/List;)V

    iput-object v0, p0, Lcom/zte/backup/composer/contact/ContactBakcupComposer;->pbExport:Lcom/zte/backup/format/vxx/vcard/PhoneBookExport;

    .line 32
    iget-object v0, p0, Lcom/zte/backup/composer/contact/ContactBakcupComposer;->pbExport:Lcom/zte/backup/format/vxx/vcard/PhoneBookExport;

    invoke-virtual {v0}, Lcom/zte/backup/format/vxx/vcard/PhoneBookExport;->getPhoneBookItemNum()I

    move-result v0

    iput v0, p0, Lcom/zte/backup/composer/contact/ContactBakcupComposer;->totalNum:I

    .line 33
    iget-object v0, p0, Lcom/zte/backup/composer/contact/ContactBakcupComposer;->pbExport:Lcom/zte/backup/format/vxx/vcard/PhoneBookExport;

    invoke-virtual {v0}, Lcom/zte/backup/format/vxx/vcard/PhoneBookExport;->getBackupDataSize()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/zte/backup/composer/contact/ContactBakcupComposer;->size:J

    .line 34
    return-void
.end method

.method public static encodeContactGroupWithQP(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "contactID"

    .prologue
    .line 131
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public compose()I
    .locals 5

    .prologue
    .line 51
    sget-object v3, Lcom/zte/backup/composer/contact/ContactBakcupComposer;->LOG_TAG:Ljava/lang/String;

    const-string v4, "backup compose begin"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    invoke-virtual {p0}, Lcom/zte/backup/composer/contact/ContactBakcupComposer;->init()Z

    .line 53
    iget v3, p0, Lcom/zte/backup/composer/contact/ContactBakcupComposer;->totalNum:I

    if-nez v3, :cond_1

    .line 54
    const/16 v2, 0x2005

    .line 67
    :cond_0
    :goto_0
    return v2

    .line 58
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/zte/backup/composer/contact/ContactBakcupComposer;->path:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "contact.vcf"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 59
    .local v0, contactPath:Ljava/lang/String;
    iget-object v3, p0, Lcom/zte/backup/composer/contact/ContactBakcupComposer;->pbExport:Lcom/zte/backup/format/vxx/vcard/PhoneBookExport;

    invoke-virtual {v3, v0}, Lcom/zte/backup/format/vxx/vcard/PhoneBookExport;->WriteVCF_Exp(Ljava/lang/String;)I

    move-result v2

    .line 60
    .local v2, iResult:I
    const/16 v3, 0x2001

    if-eq v2, v3, :cond_0

    .line 61
    new-instance v1, Ljava/io/File;

    iget-object v3, p0, Lcom/zte/backup/composer/contact/ContactBakcupComposer;->path:Ljava/lang/String;

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 62
    .local v1, file:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 63
    iget-object v3, p0, Lcom/zte/backup/composer/contact/ContactBakcupComposer;->path:Ljava/lang/String;

    invoke-static {v3}, Lcom/zte/backup/common/CommonFunctions;->deleteDirRecursion(Ljava/lang/String;)Z

    goto :goto_0
.end method

.method public getFolderDir()Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    const-string v0, "Contact"

    return-object v0
.end method

.method public getSize()J
    .locals 2

    .prologue
    .line 85
    iget-wide v0, p0, Lcom/zte/backup/composer/contact/ContactBakcupComposer;->size:J

    return-wide v0
.end method

.method public getTotalNum()I
    .locals 1

    .prologue
    .line 81
    iget v0, p0, Lcom/zte/backup/composer/contact/ContactBakcupComposer;->totalNum:I

    return v0
.end method

.method public init()Z
    .locals 1

    .prologue
    .line 42
    const/4 v0, 0x0

    return v0
.end method

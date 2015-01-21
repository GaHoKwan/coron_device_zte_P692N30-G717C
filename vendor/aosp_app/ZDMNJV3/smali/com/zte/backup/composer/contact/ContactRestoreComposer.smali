.class public Lcom/zte/backup/composer/contact/ContactRestoreComposer;
.super Lcom/zte/backup/composer/Composer;
.source "ContactRestoreComposer.java"


# static fields
.field private static LOG_TAG:Ljava/lang/String;


# instance fields
.field private contactFileName:Ljava/lang/String;

.field pbImport:Lcom/zte/backup/format/vxx/vcard/PhoneBookImport;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const-string v0, "ContactRestoreComposer"

    sput-object v0, Lcom/zte/backup/composer/contact/ContactRestoreComposer;->LOG_TAG:Ljava/lang/String;

    .line 23
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .parameter "context"
    .parameter "backupPath"

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/zte/backup/composer/Composer;-><init>(Landroid/content/Context;)V

    .line 25
    const-string v0, "contact.vcf"

    iput-object v0, p0, Lcom/zte/backup/composer/contact/ContactRestoreComposer;->contactFileName:Ljava/lang/String;

    .line 26
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zte/backup/composer/contact/ContactRestoreComposer;->pbImport:Lcom/zte/backup/format/vxx/vcard/PhoneBookImport;

    .line 30
    sget-object v0, Lcom/zte/backup/composer/DataType;->PHONEBOOK:Lcom/zte/backup/composer/DataType;

    iput-object v0, p0, Lcom/zte/backup/composer/contact/ContactRestoreComposer;->type:Lcom/zte/backup/composer/DataType;

    .line 31
    iget-object v0, p0, Lcom/zte/backup/composer/contact/ContactRestoreComposer;->type:Lcom/zte/backup/composer/DataType;

    invoke-static {v0}, Lcom/zte/backup/common/CommonFunctions;->getItemCountFromBackupXml(Lcom/zte/backup/composer/DataType;)I

    move-result v0

    iput v0, p0, Lcom/zte/backup/composer/contact/ContactRestoreComposer;->totalNum:I

    .line 32
    invoke-virtual {p0, p2}, Lcom/zte/backup/composer/contact/ContactRestoreComposer;->setInPath(Ljava/lang/String;)V

    .line 33
    return-void
.end method

.method private getContactFileName()Z
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 87
    new-instance v3, Ljava/io/File;

    iget-object v5, p0, Lcom/zte/backup/composer/contact/ContactRestoreComposer;->path:Ljava/lang/String;

    invoke-direct {v3, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 88
    .local v3, pathFile:Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 89
    .local v1, files:[Ljava/io/File;
    if-nez v1, :cond_0

    .line 101
    :goto_0
    return v4

    .line 92
    :cond_0
    array-length v5, v1

    if-lez v5, :cond_1

    .line 93
    array-length v5, v1

    :goto_1
    if-lt v4, v5, :cond_2

    .line 101
    :cond_1
    :goto_2
    const/4 v4, 0x1

    goto :goto_0

    .line 93
    :cond_2
    aget-object v0, v1, v4

    .line 94
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    .line 95
    .local v2, name:Ljava/lang/String;
    const-string v6, ".vcf"

    invoke-virtual {v2, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 96
    invoke-static {v2}, Lcom/zte/backup/common/CommonFunctions;->getFileNameFromPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/zte/backup/composer/contact/ContactRestoreComposer;->contactFileName:Ljava/lang/String;

    goto :goto_2

    .line 93
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1
.end method


# virtual methods
.method public compose()I
    .locals 4

    .prologue
    .line 50
    sget-object v2, Lcom/zte/backup/composer/contact/ContactRestoreComposer;->LOG_TAG:Ljava/lang/String;

    const-string v3, "restore compose begin"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    new-instance v2, Lcom/zte/backup/format/vxx/vcard/PhoneBookImport;

    invoke-direct {v2, p0}, Lcom/zte/backup/format/vxx/vcard/PhoneBookImport;-><init>(Lcom/zte/backup/composer/Composer;)V

    iput-object v2, p0, Lcom/zte/backup/composer/contact/ContactRestoreComposer;->pbImport:Lcom/zte/backup/format/vxx/vcard/PhoneBookImport;

    .line 53
    invoke-direct {p0}, Lcom/zte/backup/composer/contact/ContactRestoreComposer;->getContactFileName()Z

    move-result v2

    if-nez v2, :cond_0

    .line 54
    const/16 v0, 0x2005

    .line 58
    :goto_0
    return v0

    .line 56
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "file://"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/zte/backup/composer/contact/ContactRestoreComposer;->path:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/zte/backup/composer/contact/ContactRestoreComposer;->contactFileName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 57
    .local v1, uri:Landroid/net/Uri;
    iget-object v2, p0, Lcom/zte/backup/composer/contact/ContactRestoreComposer;->pbImport:Lcom/zte/backup/format/vxx/vcard/PhoneBookImport;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Lcom/zte/backup/format/vxx/vcard/PhoneBookImport;->ReadVCF_Impr(Landroid/net/Uri;I)I

    move-result v0

    .line 58
    .local v0, iRet:I
    goto :goto_0
.end method

.method public getFolderDir()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    const-string v0, "Contact"

    return-object v0
.end method

.method public init()Z
    .locals 1

    .prologue
    .line 41
    const/4 v0, 0x1

    return v0
.end method

.method public onEnd(I)V
    .locals 1
    .parameter "result"

    .prologue
    .line 78
    const/16 v0, 0x2003

    if-ne p1, v0, :cond_0

    .line 79
    iget-object v0, p0, Lcom/zte/backup/composer/contact/ContactRestoreComposer;->pbImport:Lcom/zte/backup/format/vxx/vcard/PhoneBookImport;

    if-eqz v0, :cond_0

    .line 80
    iget-object v0, p0, Lcom/zte/backup/composer/contact/ContactRestoreComposer;->pbImport:Lcom/zte/backup/format/vxx/vcard/PhoneBookImport;

    invoke-virtual {v0}, Lcom/zte/backup/format/vxx/vcard/PhoneBookImport;->stopImport()V

    .line 83
    :cond_0
    invoke-super {p0, p1}, Lcom/zte/backup/composer/Composer;->onEnd(I)V

    .line 84
    return-void
.end method

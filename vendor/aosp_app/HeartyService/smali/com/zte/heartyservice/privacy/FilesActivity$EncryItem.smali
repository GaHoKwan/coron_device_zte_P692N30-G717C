.class public Lcom/zte/heartyservice/privacy/FilesActivity$EncryItem;
.super Lcom/zte/heartyservice/common/datatype/CommonListItem;
.source "FilesActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/heartyservice/privacy/FilesActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "EncryItem"
.end annotation


# instance fields
.field private decrypted:Z

.field public hs:I

.field public id:I

.field public keyData:[B

.field public name:Ljava/lang/String;

.field public nn:Ljava/lang/String;

.field public op:Ljava/lang/String;

.field public ot:J

.field public randomKeyStr:Ljava/lang/String;

.field final synthetic this$0:Lcom/zte/heartyservice/privacy/FilesActivity;

.field public tp:I


# direct methods
.method protected constructor <init>(Lcom/zte/heartyservice/privacy/FilesActivity;)V
    .locals 1
    .parameter

    .prologue
    .line 862
    iput-object p1, p0, Lcom/zte/heartyservice/privacy/FilesActivity$EncryItem;->this$0:Lcom/zte/heartyservice/privacy/FilesActivity;

    invoke-direct {p0}, Lcom/zte/heartyservice/common/datatype/CommonListItem;-><init>()V

    .line 863
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zte/heartyservice/privacy/FilesActivity$EncryItem;->decrypted:Z

    return-void
.end method


# virtual methods
.method public decrypt()V
    .locals 2

    .prologue
    .line 885
    monitor-enter p0

    .line 886
    :try_start_0
    iget-boolean v0, p0, Lcom/zte/heartyservice/privacy/FilesActivity$EncryItem;->decrypted:Z

    if-nez v0, :cond_0

    .line 887
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/FilesActivity$EncryItem;->randomKeyStr:Ljava/lang/String;

    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getPrivateKey()Ljava/security/PrivateKey;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->decryptStringRSA(Ljava/lang/String;Ljava/security/Key;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/zte/heartyservice/privacy/FilesActivity$EncryItem;->keyData:[B

    .line 889
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/FilesActivity$EncryItem;->name:Ljava/lang/String;

    iget-object v1, p0, Lcom/zte/heartyservice/privacy/FilesActivity$EncryItem;->keyData:[B

    invoke-static {v0, v1}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->decryptString(Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/heartyservice/privacy/FilesActivity$EncryItem;->name:Ljava/lang/String;

    .line 890
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/FilesActivity$EncryItem;->op:Ljava/lang/String;

    iget-object v1, p0, Lcom/zte/heartyservice/privacy/FilesActivity$EncryItem;->keyData:[B

    invoke-static {v0, v1}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->decryptString(Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/heartyservice/privacy/FilesActivity$EncryItem;->op:Ljava/lang/String;

    .line 891
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/FilesActivity$EncryItem;->nn:Ljava/lang/String;

    iget-object v1, p0, Lcom/zte/heartyservice/privacy/FilesActivity$EncryItem;->keyData:[B

    invoke-static {v0, v1}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->decryptString(Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/heartyservice/privacy/FilesActivity$EncryItem;->nn:Ljava/lang/String;

    .line 892
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/zte/heartyservice/privacy/FilesActivity$EncryItem;->decrypted:Z

    .line 894
    :cond_0
    monitor-exit p0

    .line 895
    return-void

    .line 894
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isEncryFileExist()Z
    .locals 3

    .prologue
    .line 875
    invoke-virtual {p0}, Lcom/zte/heartyservice/privacy/FilesActivity$EncryItem;->decrypt()V

    .line 876
    invoke-static {}, Lcom/zte/heartyservice/common/utils/SDUtils;->getPDPath()Ljava/lang/String;

    move-result-object v1

    .line 877
    .local v1, pdPath:Ljava/lang/String;
    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/zte/heartyservice/privacy/FilesActivity$EncryItem;->nn:Ljava/lang/String;

    if-nez v2, :cond_1

    .line 878
    :cond_0
    const/4 v2, 0x0

    .line 881
    :goto_0
    return v2

    .line 880
    :cond_1
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lcom/zte/heartyservice/privacy/FilesActivity$EncryItem;->nn:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 881
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    goto :goto_0
.end method

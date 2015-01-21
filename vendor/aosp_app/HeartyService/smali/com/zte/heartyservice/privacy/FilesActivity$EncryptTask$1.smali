.class Lcom/zte/heartyservice/privacy/FilesActivity$EncryptTask$1;
.super Ljava/lang/Object;
.source "FilesActivity.java"

# interfaces
.implements Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils$UpdatePD;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/heartyservice/privacy/FilesActivity$EncryptTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/zte/heartyservice/privacy/FilesActivity$EncryptTask;


# direct methods
.method constructor <init>(Lcom/zte/heartyservice/privacy/FilesActivity$EncryptTask;)V
    .locals 0
    .parameter

    .prologue
    .line 604
    iput-object p1, p0, Lcom/zte/heartyservice/privacy/FilesActivity$EncryptTask$1;->this$1:Lcom/zte/heartyservice/privacy/FilesActivity$EncryptTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public updatePDMsg(ILjava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "n"
    .parameter "percent"
    .parameter "name"

    .prologue
    .line 608
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/FilesActivity$EncryptTask$1;->this$1:Lcom/zte/heartyservice/privacy/FilesActivity$EncryptTask;

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    const/4 v2, 0x2

    aput-object p3, v1, v2

    const/4 v2, 0x3

    const v3, 0x7f0a0318

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    #calls: Lcom/zte/heartyservice/privacy/FilesActivity$EncryptTask;->publishProgress([Ljava/lang/Object;)V
    invoke-static {v0, v1}, Lcom/zte/heartyservice/privacy/FilesActivity$EncryptTask;->access$700(Lcom/zte/heartyservice/privacy/FilesActivity$EncryptTask;[Ljava/lang/Object;)V

    .line 610
    return-void
.end method

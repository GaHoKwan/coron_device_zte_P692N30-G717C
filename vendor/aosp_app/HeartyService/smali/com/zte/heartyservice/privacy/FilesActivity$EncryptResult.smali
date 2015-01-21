.class public Lcom/zte/heartyservice/privacy/FilesActivity$EncryptResult;
.super Ljava/lang/Object;
.source "FilesActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/heartyservice/privacy/FilesActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EncryptResult"
.end annotation


# instance fields
.field public refresh:Z

.field public success:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 593
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 594
    iput-boolean v0, p0, Lcom/zte/heartyservice/privacy/FilesActivity$EncryptResult;->success:Z

    .line 595
    iput-boolean v0, p0, Lcom/zte/heartyservice/privacy/FilesActivity$EncryptResult;->refresh:Z

    return-void
.end method

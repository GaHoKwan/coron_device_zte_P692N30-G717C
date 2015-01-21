.class final Lcom/zte/heartyservice/privacy/OtherFilesActivity$OtherFilesViewItem;
.super Lcom/zte/heartyservice/privacy/FilesActivity$ViewItem;
.source "OtherFilesActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/heartyservice/privacy/OtherFilesActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "OtherFilesViewItem"
.end annotation


# instance fields
.field public text:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/zte/heartyservice/privacy/OtherFilesActivity;


# direct methods
.method private constructor <init>(Lcom/zte/heartyservice/privacy/OtherFilesActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 76
    iput-object p1, p0, Lcom/zte/heartyservice/privacy/OtherFilesActivity$OtherFilesViewItem;->this$0:Lcom/zte/heartyservice/privacy/OtherFilesActivity;

    invoke-direct {p0, p1}, Lcom/zte/heartyservice/privacy/FilesActivity$ViewItem;-><init>(Lcom/zte/heartyservice/privacy/FilesActivity;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/zte/heartyservice/privacy/OtherFilesActivity;Lcom/zte/heartyservice/privacy/OtherFilesActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 76
    invoke-direct {p0, p1}, Lcom/zte/heartyservice/privacy/OtherFilesActivity$OtherFilesViewItem;-><init>(Lcom/zte/heartyservice/privacy/OtherFilesActivity;)V

    return-void
.end method

.class public Lcom/zte/heartyservice/privacy/FilesActivity$ViewItem;
.super Ljava/lang/Object;
.source "FilesActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/heartyservice/privacy/FilesActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "ViewItem"
.end annotation


# instance fields
.field public checkBox:Landroid/widget/CheckBox;

.field public imageView:Landroid/widget/ImageView;

.field final synthetic this$0:Lcom/zte/heartyservice/privacy/FilesActivity;


# direct methods
.method protected constructor <init>(Lcom/zte/heartyservice/privacy/FilesActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 357
    iput-object p1, p0, Lcom/zte/heartyservice/privacy/FilesActivity$ViewItem;->this$0:Lcom/zte/heartyservice/privacy/FilesActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

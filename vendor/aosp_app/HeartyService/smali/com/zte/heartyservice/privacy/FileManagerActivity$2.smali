.class Lcom/zte/heartyservice/privacy/FileManagerActivity$2;
.super Ljava/lang/Object;
.source "FileManagerActivity.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/heartyservice/privacy/FileManagerActivity;->updateViewInfo(Lcom/zte/heartyservice/common/datatype/CommonListItem;ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/heartyservice/privacy/FileManagerActivity;

.field final synthetic val$listItem:Lcom/zte/heartyservice/common/datatype/CommonListItem;


# direct methods
.method constructor <init>(Lcom/zte/heartyservice/privacy/FileManagerActivity;Lcom/zte/heartyservice/common/datatype/CommonListItem;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 319
    iput-object p1, p0, Lcom/zte/heartyservice/privacy/FileManagerActivity$2;->this$0:Lcom/zte/heartyservice/privacy/FileManagerActivity;

    iput-object p2, p0, Lcom/zte/heartyservice/privacy/FileManagerActivity$2;->val$listItem:Lcom/zte/heartyservice/common/datatype/CommonListItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    .line 323
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/FileManagerActivity$2;->this$0:Lcom/zte/heartyservice/privacy/FileManagerActivity;

    iget-object v1, p0, Lcom/zte/heartyservice/privacy/FileManagerActivity$2;->val$listItem:Lcom/zte/heartyservice/common/datatype/CommonListItem;

    invoke-virtual {v0, p1, p2, v1}, Lcom/zte/heartyservice/privacy/FileManagerActivity;->checkedChanged(Landroid/view/View;ZLcom/zte/heartyservice/common/datatype/CommonListItem;)V

    .line 324
    return-void
.end method

.class Lcom/zte/heartyservice/privacy/FileManagerActivity$ViewHolder;
.super Lcom/zte/heartyservice/privacy/FilesActivity$ViewItem;
.source "FileManagerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/heartyservice/privacy/FileManagerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewHolder"
.end annotation


# instance fields
.field public textView:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/zte/heartyservice/privacy/FileManagerActivity;


# direct methods
.method private constructor <init>(Lcom/zte/heartyservice/privacy/FileManagerActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 287
    iput-object p1, p0, Lcom/zte/heartyservice/privacy/FileManagerActivity$ViewHolder;->this$0:Lcom/zte/heartyservice/privacy/FileManagerActivity;

    invoke-direct {p0, p1}, Lcom/zte/heartyservice/privacy/FilesActivity$ViewItem;-><init>(Lcom/zte/heartyservice/privacy/FilesActivity;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/zte/heartyservice/privacy/FileManagerActivity;Lcom/zte/heartyservice/privacy/FileManagerActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 287
    invoke-direct {p0, p1}, Lcom/zte/heartyservice/privacy/FileManagerActivity$ViewHolder;-><init>(Lcom/zte/heartyservice/privacy/FileManagerActivity;)V

    return-void
.end method

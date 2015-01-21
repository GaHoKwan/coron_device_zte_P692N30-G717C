.class Lcom/zte/heartyservice/privacy/FileManagerActivity$FileData;
.super Lcom/zte/heartyservice/common/datatype/CommonListItem;
.source "FileManagerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/heartyservice/privacy/FileManagerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FileData"
.end annotation


# instance fields
.field public file:Ljava/io/File;

.field public name:Ljava/lang/String;

.field final synthetic this$0:Lcom/zte/heartyservice/privacy/FileManagerActivity;


# direct methods
.method private constructor <init>(Lcom/zte/heartyservice/privacy/FileManagerActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 291
    iput-object p1, p0, Lcom/zte/heartyservice/privacy/FileManagerActivity$FileData;->this$0:Lcom/zte/heartyservice/privacy/FileManagerActivity;

    invoke-direct {p0}, Lcom/zte/heartyservice/common/datatype/CommonListItem;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/zte/heartyservice/privacy/FileManagerActivity;Lcom/zte/heartyservice/privacy/FileManagerActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 291
    invoke-direct {p0, p1}, Lcom/zte/heartyservice/privacy/FileManagerActivity$FileData;-><init>(Lcom/zte/heartyservice/privacy/FileManagerActivity;)V

    return-void
.end method

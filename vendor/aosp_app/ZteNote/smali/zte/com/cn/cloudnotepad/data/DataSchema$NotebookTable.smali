.class public Lzte/com/cn/cloudnotepad/data/DataSchema$NotebookTable;
.super Ljava/lang/Object;
.source "DataSchema.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzte/com/cn/cloudnotepad/data/DataSchema;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NotebookTable"
.end annotation


# static fields
.field public static final COVER:Ljava/lang/String; = "cover"

.field public static final NOTEBOOK_CONTENT_ITEM_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/notebook"

.field public static final NOTEBOOK_CONTENT_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir/notebook"

.field public static final NOTEBOOK_CONTENT_URI:Landroid/net/Uri; = null

.field public static final NUMBER:Ljava/lang/String; = "number"

.field public static final SEQUENCE:Ljava/lang/String; = "sequence"

.field public static final TITLE:Ljava/lang/String; = "title"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    const-string v0, "content://zte.com.cn.cloudnotepad.data/notebook"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lzte/com/cn/cloudnotepad/data/DataSchema$NotebookTable;->NOTEBOOK_CONTENT_URI:Landroid/net/Uri;

    .line 49
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

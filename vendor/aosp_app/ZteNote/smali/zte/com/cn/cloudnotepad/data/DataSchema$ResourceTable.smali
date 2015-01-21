.class public Lzte/com/cn/cloudnotepad/data/DataSchema$ResourceTable;
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
    name = "ResourceTable"
.end annotation


# static fields
.field public static final HASH:Ljava/lang/String; = "hash"

.field public static final NAME:Ljava/lang/String; = "name"

.field public static final NOTE_ID:Ljava/lang/String; = "note_id"

.field public static final RESOURCE_CONTENT_ITEM_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/resource"

.field public static final RESOURCE_CONTENT_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir/resource"

.field public static final RESOURCE_CONTENT_URI:Landroid/net/Uri; = null

.field public static final SIZE:Ljava/lang/String; = "size"

.field public static final TYPE:Ljava/lang/String; = "type"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 69
    const-string v0, "content://zte.com.cn.cloudnotepad.data/resource"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lzte/com/cn/cloudnotepad/data/DataSchema$ResourceTable;->RESOURCE_CONTENT_URI:Landroid/net/Uri;

    .line 68
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

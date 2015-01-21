.class public Lzte/com/cn/cloudnotepad/data/DataSchema$NotesTable;
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
    name = "NotesTable"
.end annotation


# static fields
.field public static final ADDRESS:Ljava/lang/String; = "address"

.field public static final CONTENT:Ljava/lang/String; = "content"

.field public static final CONTENT_HASH:Ljava/lang/String; = "content_hash"

.field public static final CREATED:Ljava/lang/String; = "created"

.field public static final DRAWABLESRC:Ljava/lang/String; = "drawable_src"

.field public static final LATITUDE:Ljava/lang/String; = "latitude"

.field public static final LONGITUDE:Ljava/lang/String; = "longitude"

.field public static final MAP:Ljava/lang/String; = "map"

.field public static final NOTEBOOK:Ljava/lang/String; = "notebook"

.field public static final NOTES_CONTENT_ITEM_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/notes"

.field public static final NOTES_CONTENT_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir/notes"

.field public static final NOTES_CONTENT_URI:Landroid/net/Uri; = null

.field public static final SIZE:Ljava/lang/String; = "size"

.field public static final TITLE:Ljava/lang/String; = "title"

.field public static final UPDATED:Ljava/lang/String; = "updated"

.field public static final UUID:Ljava/lang/String; = "uuid"

.field public static final WALLPAPER:Ljava/lang/String; = "wallpaper"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const-string v0, "content://zte.com.cn.cloudnotepad.data/notes"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lzte/com/cn/cloudnotepad/data/DataSchema$NotesTable;->NOTES_CONTENT_URI:Landroid/net/Uri;

    .line 27
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

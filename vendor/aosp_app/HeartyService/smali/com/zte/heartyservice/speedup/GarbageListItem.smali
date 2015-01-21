.class public Lcom/zte/heartyservice/speedup/GarbageListItem;
.super Ljava/lang/Object;
.source "GarbageListItem.java"


# static fields
.field public static TYPE_CACHE:I

.field public static TYPE_DELETED_APK_FILE:I

.field public static TYPE_INSTALLED_APK_FILE:I

.field public static TYPE_SYSTEM_CLEAN:I


# instance fields
.field public items:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/zte/heartyservice/speedup/GarbageChildItem;",
            ">;"
        }
    .end annotation
.end field

.field public name:Ljava/lang/String;

.field public subhead:Ljava/lang/String;

.field public type:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 6
    const/4 v0, 0x1

    sput v0, Lcom/zte/heartyservice/speedup/GarbageListItem;->TYPE_CACHE:I

    .line 7
    const/4 v0, 0x2

    sput v0, Lcom/zte/heartyservice/speedup/GarbageListItem;->TYPE_DELETED_APK_FILE:I

    .line 8
    const/4 v0, 0x3

    sput v0, Lcom/zte/heartyservice/speedup/GarbageListItem;->TYPE_INSTALLED_APK_FILE:I

    .line 9
    const/4 v0, 0x4

    sput v0, Lcom/zte/heartyservice/speedup/GarbageListItem;->TYPE_SYSTEM_CLEAN:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

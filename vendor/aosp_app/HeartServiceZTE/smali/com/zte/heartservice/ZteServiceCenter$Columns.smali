.class public Lcom/zte/heartservice/ZteServiceCenter$Columns;
.super Ljava/lang/Object;
.source "ZteServiceCenter.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/heartservice/ZteServiceCenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Columns"
.end annotation


# static fields
.field public static final ADDRESS:Ljava/lang/String; = "address"

.field public static final CITY:Ljava/lang/String; = "city"

.field public static final COLUMNS:[Ljava/lang/String; = null

.field public static final COLUMN_INDEX_ADDRESS:I = 0x5

.field public static final COLUMN_INDEX_CITY:I = 0x2

.field public static final COLUMN_INDEX_ID:I = 0x0

.field public static final COLUMN_INDEX_NAME:I = 0x3

.field public static final COLUMN_INDEX_PHONENUM:I = 0x4

.field public static final COLUMN_INDEX_PROVINCE:I = 0x1

.field public static final NAME:Ljava/lang/String; = "name"

.field public static final PHONENUM:Ljava/lang/String; = "phonenum"

.field public static final PROVINCE:Ljava/lang/String; = "province"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 36
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "province"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    .line 37
    const-string v2, "city"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "name"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "phonenum"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "address"

    aput-object v2, v0, v1

    .line 36
    sput-object v0, Lcom/zte/heartservice/ZteServiceCenter$Columns;->COLUMNS:[Ljava/lang/String;

    .line 44
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

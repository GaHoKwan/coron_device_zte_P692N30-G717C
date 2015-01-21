.class public Lcn/com/zte/nlt/module/zte/ZteNltDbAdapter$OptEntry;
.super Ljava/lang/Object;
.source "ZteNltDbAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/com/zte/nlt/module/zte/ZteNltDbAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OptEntry"
.end annotation


# instance fields
.field public tableName:Ljava/lang/String;

.field public values:Landroid/content/ContentValues;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/content/ContentValues;)V
    .locals 0
    .parameter "tableName"
    .parameter "values"

    .prologue
    .line 311
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 312
    iput-object p1, p0, Lcn/com/zte/nlt/module/zte/ZteNltDbAdapter$OptEntry;->tableName:Ljava/lang/String;

    .line 313
    iput-object p2, p0, Lcn/com/zte/nlt/module/zte/ZteNltDbAdapter$OptEntry;->values:Landroid/content/ContentValues;

    .line 314
    return-void
.end method

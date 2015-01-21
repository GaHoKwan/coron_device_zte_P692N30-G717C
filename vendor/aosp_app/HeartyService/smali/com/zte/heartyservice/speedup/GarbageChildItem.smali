.class public Lcom/zte/heartyservice/speedup/GarbageChildItem;
.super Ljava/lang/Object;
.source "GarbageChildItem.java"


# instance fields
.field public icon:Landroid/graphics/drawable/Drawable;

.field public name:Ljava/lang/String;

.field public size:Ljava/lang/String;

.field public subhead:Ljava/lang/String;

.field public tag:Ljava/lang/Object;

.field public type:I


# direct methods
.method public constructor <init>(ILandroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .parameter "type"
    .parameter "icon"
    .parameter "name"
    .parameter "subhead"
    .parameter "size"
    .parameter "tag"

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput p1, p0, Lcom/zte/heartyservice/speedup/GarbageChildItem;->type:I

    .line 14
    iput-object p2, p0, Lcom/zte/heartyservice/speedup/GarbageChildItem;->icon:Landroid/graphics/drawable/Drawable;

    .line 15
    iput-object p3, p0, Lcom/zte/heartyservice/speedup/GarbageChildItem;->name:Ljava/lang/String;

    .line 16
    iput-object p4, p0, Lcom/zte/heartyservice/speedup/GarbageChildItem;->subhead:Ljava/lang/String;

    .line 17
    iput-object p5, p0, Lcom/zte/heartyservice/speedup/GarbageChildItem;->size:Ljava/lang/String;

    .line 18
    iput-object p6, p0, Lcom/zte/heartyservice/speedup/GarbageChildItem;->tag:Ljava/lang/Object;

    .line 19
    return-void
.end method

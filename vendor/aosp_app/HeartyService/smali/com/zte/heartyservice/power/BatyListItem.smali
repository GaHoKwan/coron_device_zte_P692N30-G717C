.class public Lcom/zte/heartyservice/power/BatyListItem;
.super Lcom/zte/heartyservice/common/datatype/CommonListItem;
.source "BatyListItem.java"


# instance fields
.field private comment:Ljava/lang/String;

.field private drawable:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V
    .locals 0
    .parameter "refName"
    .parameter "drawable"
    .parameter "comment"

    .prologue
    .line 11
    invoke-direct {p0, p1}, Lcom/zte/heartyservice/common/datatype/CommonListItem;-><init>(Ljava/lang/String;)V

    .line 12
    iput-object p2, p0, Lcom/zte/heartyservice/power/BatyListItem;->drawable:Landroid/graphics/drawable/Drawable;

    .line 13
    iput-object p3, p0, Lcom/zte/heartyservice/power/BatyListItem;->comment:Ljava/lang/String;

    .line 14
    return-void
.end method


# virtual methods
.method public getComment()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/zte/heartyservice/power/BatyListItem;->comment:Ljava/lang/String;

    return-object v0
.end method

.method public getDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/zte/heartyservice/power/BatyListItem;->drawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public setComment(Ljava/lang/String;)V
    .locals 0
    .parameter "comment"

    .prologue
    .line 31
    iput-object p1, p0, Lcom/zte/heartyservice/power/BatyListItem;->comment:Ljava/lang/String;

    .line 32
    return-void
.end method

.method public setDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter "drawable"

    .prologue
    .line 23
    iput-object p1, p0, Lcom/zte/heartyservice/power/BatyListItem;->drawable:Landroid/graphics/drawable/Drawable;

    .line 24
    return-void
.end method

.class public Lcom/zte/heartyservice/common/utils/PackageUtil$AppSnippet;
.super Ljava/lang/Object;
.source "PackageUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/heartyservice/common/utils/PackageUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AppSnippet"
.end annotation


# instance fields
.field icon:Landroid/graphics/drawable/Drawable;

.field label:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter "label"
    .parameter "icon"

    .prologue
    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 149
    iput-object p1, p0, Lcom/zte/heartyservice/common/utils/PackageUtil$AppSnippet;->label:Ljava/lang/CharSequence;

    .line 150
    iput-object p2, p0, Lcom/zte/heartyservice/common/utils/PackageUtil$AppSnippet;->icon:Landroid/graphics/drawable/Drawable;

    .line 151
    return-void
.end method

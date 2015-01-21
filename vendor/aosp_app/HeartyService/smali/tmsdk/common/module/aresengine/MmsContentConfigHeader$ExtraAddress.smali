.class public Ltmsdk/common/module/aresengine/MmsContentConfigHeader$ExtraAddress;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltmsdk/common/module/aresengine/MmsContentConfigHeader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ExtraAddress"
.end annotation


# instance fields
.field public characterSet:I

.field public phonenumber:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter "phonenumber"
    .parameter "characterSet"

    .prologue
    .line 488
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 489
    iput-object p1, p0, Ltmsdk/common/module/aresengine/MmsContentConfigHeader$ExtraAddress;->phonenumber:Ljava/lang/String;

    .line 490
    iput p2, p0, Ltmsdk/common/module/aresengine/MmsContentConfigHeader$ExtraAddress;->characterSet:I

    .line 491
    return-void
.end method

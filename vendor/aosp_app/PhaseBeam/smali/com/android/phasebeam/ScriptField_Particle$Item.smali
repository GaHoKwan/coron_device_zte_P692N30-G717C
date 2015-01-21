.class public Lcom/android/phasebeam/ScriptField_Particle$Item;
.super Ljava/lang/Object;
.source "ScriptField_Particle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phasebeam/ScriptField_Particle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Item"
.end annotation


# static fields
.field public static final sizeof:I = 0x14


# instance fields
.field offsetX:F

.field position:Landroid/renderscript/Float3;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Landroid/renderscript/Float3;

    invoke-direct {v0}, Landroid/renderscript/Float3;-><init>()V

    iput-object v0, p0, Lcom/android/phasebeam/ScriptField_Particle$Item;->position:Landroid/renderscript/Float3;

    .line 38
    return-void
.end method

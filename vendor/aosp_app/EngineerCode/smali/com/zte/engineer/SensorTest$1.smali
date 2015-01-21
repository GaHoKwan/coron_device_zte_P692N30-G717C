.class Lcom/zte/engineer/SensorTest$1;
.super Ljava/lang/Object;
.source "SensorTest.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/engineer/SensorTest;->initSensorListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/engineer/SensorTest;


# direct methods
.method constructor <init>(Lcom/zte/engineer/SensorTest;)V
    .locals 0
    .parameter

    .prologue
    .line 90
    iput-object p1, p0, Lcom/zte/engineer/SensorTest$1;->this$0:Lcom/zte/engineer/SensorTest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .parameter "s"
    .parameter "accuracy"

    .prologue
    .line 174
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 10
    .parameter "e"

    .prologue
    const v9, 0x7f06005e

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v6, -0x1

    const v5, -0xff0100

    .line 95
    iget-object v2, p0, Lcom/zte/engineer/SensorTest$1;->this$0:Lcom/zte/engineer/SensorTest;

    iget-object v3, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v3, v3, v7

    #setter for: Lcom/zte/engineer/SensorTest;->x:F
    invoke-static {v2, v3}, Lcom/zte/engineer/SensorTest;->access$002(Lcom/zte/engineer/SensorTest;F)F

    .line 96
    iget-object v2, p0, Lcom/zte/engineer/SensorTest$1;->this$0:Lcom/zte/engineer/SensorTest;

    iget-object v3, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v3, v3, v8

    #setter for: Lcom/zte/engineer/SensorTest;->y:F
    invoke-static {v2, v3}, Lcom/zte/engineer/SensorTest;->access$102(Lcom/zte/engineer/SensorTest;F)F

    .line 97
    iget-object v2, p0, Lcom/zte/engineer/SensorTest$1;->this$0:Lcom/zte/engineer/SensorTest;

    iget-object v3, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v4, 0x2

    aget v3, v3, v4

    #setter for: Lcom/zte/engineer/SensorTest;->z:F
    invoke-static {v2, v3}, Lcom/zte/engineer/SensorTest;->access$202(Lcom/zte/engineer/SensorTest;F)F

    .line 99
    iget-object v2, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v2}, Landroid/hardware/Sensor;->getType()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 171
    :goto_0
    :pswitch_0
    return-void

    .line 103
    :pswitch_1
    iget-object v2, p0, Lcom/zte/engineer/SensorTest$1;->this$0:Lcom/zte/engineer/SensorTest;

    iget-object v2, v2, Lcom/zte/engineer/SensorTest;->GsensorX:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/zte/engineer/SensorTest$1;->this$0:Lcom/zte/engineer/SensorTest;

    #getter for: Lcom/zte/engineer/SensorTest;->x:F
    invoke-static {v3}, Lcom/zte/engineer/SensorTest;->access$000(Lcom/zte/engineer/SensorTest;)F

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 104
    iget-object v2, p0, Lcom/zte/engineer/SensorTest$1;->this$0:Lcom/zte/engineer/SensorTest;

    iget-object v2, v2, Lcom/zte/engineer/SensorTest;->GsensorY:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/zte/engineer/SensorTest$1;->this$0:Lcom/zte/engineer/SensorTest;

    #getter for: Lcom/zte/engineer/SensorTest;->y:F
    invoke-static {v3}, Lcom/zte/engineer/SensorTest;->access$100(Lcom/zte/engineer/SensorTest;)F

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 105
    iget-object v2, p0, Lcom/zte/engineer/SensorTest$1;->this$0:Lcom/zte/engineer/SensorTest;

    iget-object v2, v2, Lcom/zte/engineer/SensorTest;->GsensorZ:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/zte/engineer/SensorTest$1;->this$0:Lcom/zte/engineer/SensorTest;

    #getter for: Lcom/zte/engineer/SensorTest;->z:F
    invoke-static {v3}, Lcom/zte/engineer/SensorTest;->access$200(Lcom/zte/engineer/SensorTest;)F

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 111
    :pswitch_2
    iget-object v2, p0, Lcom/zte/engineer/SensorTest$1;->this$0:Lcom/zte/engineer/SensorTest;

    iget-object v2, v2, Lcom/zte/engineer/SensorTest;->MagneticX:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/zte/engineer/SensorTest$1;->this$0:Lcom/zte/engineer/SensorTest;

    #getter for: Lcom/zte/engineer/SensorTest;->x:F
    invoke-static {v3}, Lcom/zte/engineer/SensorTest;->access$000(Lcom/zte/engineer/SensorTest;)F

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 112
    iget-object v2, p0, Lcom/zte/engineer/SensorTest$1;->this$0:Lcom/zte/engineer/SensorTest;

    iget-object v2, v2, Lcom/zte/engineer/SensorTest;->MagneticY:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/zte/engineer/SensorTest$1;->this$0:Lcom/zte/engineer/SensorTest;

    #getter for: Lcom/zte/engineer/SensorTest;->y:F
    invoke-static {v3}, Lcom/zte/engineer/SensorTest;->access$100(Lcom/zte/engineer/SensorTest;)F

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 113
    iget-object v2, p0, Lcom/zte/engineer/SensorTest$1;->this$0:Lcom/zte/engineer/SensorTest;

    iget-object v2, v2, Lcom/zte/engineer/SensorTest;->MagneticZ:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/zte/engineer/SensorTest$1;->this$0:Lcom/zte/engineer/SensorTest;

    #getter for: Lcom/zte/engineer/SensorTest;->z:F
    invoke-static {v3}, Lcom/zte/engineer/SensorTest;->access$200(Lcom/zte/engineer/SensorTest;)F

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 119
    :pswitch_3
    iget-object v2, p0, Lcom/zte/engineer/SensorTest$1;->this$0:Lcom/zte/engineer/SensorTest;

    iget-object v2, v2, Lcom/zte/engineer/SensorTest;->GyroscopeX:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/zte/engineer/SensorTest$1;->this$0:Lcom/zte/engineer/SensorTest;

    #getter for: Lcom/zte/engineer/SensorTest;->x:F
    invoke-static {v3}, Lcom/zte/engineer/SensorTest;->access$000(Lcom/zte/engineer/SensorTest;)F

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 120
    iget-object v2, p0, Lcom/zte/engineer/SensorTest$1;->this$0:Lcom/zte/engineer/SensorTest;

    iget-object v2, v2, Lcom/zte/engineer/SensorTest;->GyroscopeY:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/zte/engineer/SensorTest$1;->this$0:Lcom/zte/engineer/SensorTest;

    #getter for: Lcom/zte/engineer/SensorTest;->y:F
    invoke-static {v3}, Lcom/zte/engineer/SensorTest;->access$100(Lcom/zte/engineer/SensorTest;)F

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 121
    iget-object v2, p0, Lcom/zte/engineer/SensorTest$1;->this$0:Lcom/zte/engineer/SensorTest;

    iget-object v2, v2, Lcom/zte/engineer/SensorTest;->GyroscopeZ:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/zte/engineer/SensorTest$1;->this$0:Lcom/zte/engineer/SensorTest;

    #getter for: Lcom/zte/engineer/SensorTest;->z:F
    invoke-static {v3}, Lcom/zte/engineer/SensorTest;->access$200(Lcom/zte/engineer/SensorTest;)F

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 127
    :pswitch_4
    iget-object v2, p0, Lcom/zte/engineer/SensorTest$1;->this$0:Lcom/zte/engineer/SensorTest;

    #getter for: Lcom/zte/engineer/SensorTest;->x:F
    invoke-static {v2}, Lcom/zte/engineer/SensorTest;->access$000(Lcom/zte/engineer/SensorTest;)F

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v1

    .line 128
    .local v1, tian:Ljava/lang/String;
    const-string v2, "thfdebug"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "tian = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    const-string v2, "10.0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 131
    iget-object v2, p0, Lcom/zte/engineer/SensorTest$1;->this$0:Lcom/zte/engineer/SensorTest;

    iget-object v2, v2, Lcom/zte/engineer/SensorTest;->LightView:Landroid/widget/TextView;

    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setText(I)V

    .line 132
    iget-object v2, p0, Lcom/zte/engineer/SensorTest$1;->this$0:Lcom/zte/engineer/SensorTest;

    iget-object v2, v2, Lcom/zte/engineer/SensorTest;->LightView:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_0

    .line 136
    :cond_0
    iget-object v2, p0, Lcom/zte/engineer/SensorTest$1;->this$0:Lcom/zte/engineer/SensorTest;

    iget-object v2, v2, Lcom/zte/engineer/SensorTest;->LightView:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/zte/engineer/SensorTest$1;->this$0:Lcom/zte/engineer/SensorTest;

    const v4, 0x7f06005f

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v4, v8, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/zte/engineer/SensorTest$1;->this$0:Lcom/zte/engineer/SensorTest;

    #getter for: Lcom/zte/engineer/SensorTest;->x:F
    invoke-static {v5}, Lcom/zte/engineer/SensorTest;->access$000(Lcom/zte/engineer/SensorTest;)F

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 138
    iget-object v2, p0, Lcom/zte/engineer/SensorTest$1;->this$0:Lcom/zte/engineer/SensorTest;

    iget-object v2, v2, Lcom/zte/engineer/SensorTest;->LightView:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_0

    .line 145
    .end local v1           #tian:Ljava/lang/String;
    :pswitch_5
    iget-object v2, p0, Lcom/zte/engineer/SensorTest$1;->this$0:Lcom/zte/engineer/SensorTest;

    #getter for: Lcom/zte/engineer/SensorTest;->x:F
    invoke-static {v2}, Lcom/zte/engineer/SensorTest;->access$000(Lcom/zte/engineer/SensorTest;)F

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    .line 146
    .local v0, hai:Ljava/lang/String;
    const-string v2, "thfdebug"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "hai = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    const-string v2, "0.0"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 150
    iget-object v2, p0, Lcom/zte/engineer/SensorTest$1;->this$0:Lcom/zte/engineer/SensorTest;

    iget-object v2, v2, Lcom/zte/engineer/SensorTest;->ProximityView:Landroid/widget/TextView;

    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setText(I)V

    .line 151
    iget-object v2, p0, Lcom/zte/engineer/SensorTest$1;->this$0:Lcom/zte/engineer/SensorTest;

    iget-object v2, v2, Lcom/zte/engineer/SensorTest;->ProximityView:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_0

    .line 156
    :cond_1
    iget-object v2, p0, Lcom/zte/engineer/SensorTest$1;->this$0:Lcom/zte/engineer/SensorTest;

    iget-object v2, v2, Lcom/zte/engineer/SensorTest;->ProximityView:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/zte/engineer/SensorTest$1;->this$0:Lcom/zte/engineer/SensorTest;

    #getter for: Lcom/zte/engineer/SensorTest;->x:F
    invoke-static {v3}, Lcom/zte/engineer/SensorTest;->access$000(Lcom/zte/engineer/SensorTest;)F

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 157
    iget-object v2, p0, Lcom/zte/engineer/SensorTest$1;->this$0:Lcom/zte/engineer/SensorTest;

    iget-object v2, v2, Lcom/zte/engineer/SensorTest;->ProximityView:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_0

    .line 99
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method

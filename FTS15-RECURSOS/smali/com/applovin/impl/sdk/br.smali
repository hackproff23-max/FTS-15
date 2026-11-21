.class Lcom/applovin/impl/sdk/br;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/applovin/impl/sdk/bn;

.field private final b:Ljava/lang/String;

.field private final c:Lcom/applovin/impl/sdk/ba;

.field private final d:Lcom/applovin/impl/sdk/bo;


# direct methods
.method constructor <init>(Lcom/applovin/impl/sdk/bn;Lcom/applovin/impl/sdk/ba;Lcom/applovin/impl/sdk/bo;)V
    .locals 1

    iput-object p1, p0, Lcom/applovin/impl/sdk/br;->a:Lcom/applovin/impl/sdk/bn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p2}, Lcom/applovin/impl/sdk/ba;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/impl/sdk/br;->b:Ljava/lang/String;

    iput-object p2, p0, Lcom/applovin/impl/sdk/br;->c:Lcom/applovin/impl/sdk/ba;

    iput-object p3, p0, Lcom/applovin/impl/sdk/br;->d:Lcom/applovin/impl/sdk/bo;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    :try_start_0
    invoke-static {}, Lcom/applovin/impl/sdk/m;->a()V

    iget-object v0, p0, Lcom/applovin/impl/sdk/br;->a:Lcom/applovin/impl/sdk/bn;

    invoke-static {v0}, Lcom/applovin/impl/sdk/bn;->a(Lcom/applovin/impl/sdk/bn;)Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->c()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/applovin/impl/sdk/br;->a:Lcom/applovin/impl/sdk/bn;

    invoke-static {v0}, Lcom/applovin/impl/sdk/bn;->a(Lcom/applovin/impl/sdk/bn;)Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/applovin/impl/sdk/br;->a:Lcom/applovin/impl/sdk/bn;

    invoke-static {v0}, Lcom/applovin/impl/sdk/bn;->b(Lcom/applovin/impl/sdk/bn;)Lcom/applovin/sdk/AppLovinLogger;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/sdk/br;->b:Ljava/lang/String;

    const-string v4, "Task started execution..."

    invoke-interface {v0, v1, v4}, Lcom/applovin/sdk/AppLovinLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/applovin/impl/sdk/br;->c:Lcom/applovin/impl/sdk/ba;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/ba;->run()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long v4, v0, v2

    iget-object v0, p0, Lcom/applovin/impl/sdk/br;->c:Lcom/applovin/impl/sdk/ba;

    instance-of v0, v0, Lcom/applovin/impl/sdk/cc;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/applovin/impl/sdk/bx;->a()Lcom/applovin/impl/sdk/bx;

    move-result-object v1

    iget-object v0, p0, Lcom/applovin/impl/sdk/br;->c:Lcom/applovin/impl/sdk/ba;

    check-cast v0, Lcom/applovin/impl/sdk/cc;

    invoke-interface {v0}, Lcom/applovin/impl/sdk/cc;->f()Ljava/lang/String;

    move-result-object v0

    iget-object v6, p0, Lcom/applovin/impl/sdk/br;->a:Lcom/applovin/impl/sdk/bn;

    invoke-static {v6}, Lcom/applovin/impl/sdk/bn;->a(Lcom/applovin/impl/sdk/bn;)Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    move-result-object v6

    invoke-static {v6}, Lcom/applovin/impl/sdk/p;->a(Lcom/applovin/impl/sdk/AppLovinSdkImpl;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v0, v4, v5, v6}, Lcom/applovin/impl/sdk/bx;->a(Ljava/lang/String;JLjava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/applovin/impl/sdk/br;->a:Lcom/applovin/impl/sdk/bn;

    invoke-static {v0}, Lcom/applovin/impl/sdk/bn;->b(Lcom/applovin/impl/sdk/bn;)Lcom/applovin/sdk/AppLovinLogger;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/sdk/br;->b:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Task executed successfully in "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "ms."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v1, v6}, Lcom/applovin/sdk/AppLovinLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/applovin/impl/sdk/br;->a:Lcom/applovin/impl/sdk/bn;

    invoke-static {v0}, Lcom/applovin/impl/sdk/bn;->a(Lcom/applovin/impl/sdk/bn;)Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->b()Lcom/applovin/impl/sdk/bg;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/applovin/impl/sdk/br;->b:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, "_count"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/bg;->a(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/applovin/impl/sdk/br;->b:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, "_time"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v4, v5}, Lcom/applovin/impl/sdk/bg;->a(Ljava/lang/String;J)V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/applovin/impl/sdk/br;->a:Lcom/applovin/impl/sdk/bn;

    invoke-static {v0}, Lcom/applovin/impl/sdk/bn;->a(Lcom/applovin/impl/sdk/bn;)Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->d()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/applovin/impl/sdk/br;->a:Lcom/applovin/impl/sdk/bn;

    invoke-static {v0}, Lcom/applovin/impl/sdk/bn;->a(Lcom/applovin/impl/sdk/bn;)Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->e()V

    :goto_1
    iget-object v0, p0, Lcom/applovin/impl/sdk/br;->c:Lcom/applovin/impl/sdk/ba;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/ba;->b()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/applovin/impl/sdk/br;->a:Lcom/applovin/impl/sdk/bn;

    invoke-static {v1}, Lcom/applovin/impl/sdk/bn;->b(Lcom/applovin/impl/sdk/bn;)Lcom/applovin/sdk/AppLovinLogger;

    move-result-object v1

    iget-object v4, p0, Lcom/applovin/impl/sdk/br;->b:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Task failed execution in "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long v2, v6, v2

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "ms."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v4, v2, v0}, Lcom/applovin/sdk/AppLovinLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/applovin/impl/sdk/br;->a:Lcom/applovin/impl/sdk/bn;

    invoke-static {v0}, Lcom/applovin/impl/sdk/bn;->b(Lcom/applovin/impl/sdk/bn;)Lcom/applovin/sdk/AppLovinLogger;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/sdk/br;->b:Ljava/lang/String;

    const-string v4, "Task not executed, SDK is disabled"

    invoke-interface {v0, v1, v4}, Lcom/applovin/sdk/AppLovinLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/applovin/impl/sdk/br;->a:Lcom/applovin/impl/sdk/bn;

    invoke-static {v0}, Lcom/applovin/impl/sdk/bn;->b(Lcom/applovin/impl/sdk/bn;)Lcom/applovin/sdk/AppLovinLogger;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/sdk/br;->b:Ljava/lang/String;

    const-string v4, "Task re-scheduled..."

    invoke-interface {v0, v1, v4}, Lcom/applovin/sdk/AppLovinLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/applovin/impl/sdk/br;->a:Lcom/applovin/impl/sdk/bn;

    iget-object v1, p0, Lcom/applovin/impl/sdk/br;->c:Lcom/applovin/impl/sdk/ba;

    iget-object v4, p0, Lcom/applovin/impl/sdk/br;->d:Lcom/applovin/impl/sdk/bo;

    const-wide/16 v6, 0x7d0

    invoke-virtual {v0, v1, v4, v6, v7}, Lcom/applovin/impl/sdk/bn;->a(Lcom/applovin/impl/sdk/ba;Lcom/applovin/impl/sdk/bo;J)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

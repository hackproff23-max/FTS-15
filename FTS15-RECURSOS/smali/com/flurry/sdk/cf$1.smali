.class Lcom/flurry/sdk/cf$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/flurry/sdk/gk$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flurry/sdk/cf;->a([BLjava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/flurry/sdk/gk$a",
        "<[B[B>;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/flurry/sdk/cf;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/cf;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 153
    iput-object p1, p0, Lcom/flurry/sdk/cf$1;->c:Lcom/flurry/sdk/cf;

    iput-object p2, p0, Lcom/flurry/sdk/cf$1;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/flurry/sdk/cf$1;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lcom/flurry/sdk/gk;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 153
    check-cast p2, [B

    invoke-virtual {p0, p1, p2}, Lcom/flurry/sdk/cf$1;->a(Lcom/flurry/sdk/gk;[B)V

    return-void
.end method

.method public a(Lcom/flurry/sdk/gk;[B)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/sdk/gk",
            "<[B[B>;[B)V"
        }
    .end annotation

    .prologue
    const/4 v6, 0x5

    .line 156
    invoke-virtual {p1}, Lcom/flurry/sdk/gk;->e()I

    move-result v2

    .line 158
    const/4 v1, 0x0

    .line 159
    invoke-virtual {p1}, Lcom/flurry/sdk/gk;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p2, :cond_1

    .line 161
    :try_start_0
    iget-object v0, p0, Lcom/flurry/sdk/cf$1;->c:Lcom/flurry/sdk/cf;

    invoke-static {v0}, Lcom/flurry/sdk/cf;->a(Lcom/flurry/sdk/cf;)Lcom/flurry/sdk/gh;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/flurry/sdk/gh;->d([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/android/impl/ads/protocol/v13/SdkLogResponse;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 167
    :goto_0
    if-eqz v0, :cond_2

    iget-object v1, v0, Lcom/flurry/android/impl/ads/protocol/v13/SdkLogResponse;->result:Ljava/lang/String;

    const-string v3, "success"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 168
    iget-object v0, p0, Lcom/flurry/sdk/cf$1;->c:Lcom/flurry/sdk/cf;

    invoke-static {v0}, Lcom/flurry/sdk/cf;->b(Lcom/flurry/sdk/cf;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FlurryAdLogsManager: ad report "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/flurry/sdk/cf$1;->a:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " sent. HTTP response: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v0, v1}, Lcom/flurry/sdk/gd;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 170
    invoke-static {}, Lcom/flurry/sdk/gd;->c()I

    move-result v0

    const/4 v1, 0x3

    if-gt v0, v1, :cond_0

    invoke-static {}, Lcom/flurry/sdk/gd;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 171
    invoke-static {}, Lcom/flurry/sdk/fp;->a()Lcom/flurry/sdk/fp;

    move-result-object v0

    new-instance v1, Lcom/flurry/sdk/cf$1$1;

    invoke-direct {v1, p0}, Lcom/flurry/sdk/cf$1$1;-><init>(Lcom/flurry/sdk/cf$1;)V

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/fp;->a(Ljava/lang/Runnable;)V

    .line 180
    :cond_0
    iget-object v0, p0, Lcom/flurry/sdk/cf$1;->c:Lcom/flurry/sdk/cf;

    iget-object v1, p0, Lcom/flurry/sdk/cf$1;->a:Ljava/lang/String;

    iget-object v3, p0, Lcom/flurry/sdk/cf$1;->b:Ljava/lang/String;

    invoke-static {v0, v1, v3, v2}, Lcom/flurry/sdk/cf;->a(Lcom/flurry/sdk/cf;Ljava/lang/String;Ljava/lang/String;I)V

    .line 181
    iget-object v0, p0, Lcom/flurry/sdk/cf$1;->c:Lcom/flurry/sdk/cf;

    invoke-static {v0}, Lcom/flurry/sdk/cf;->c(Lcom/flurry/sdk/cf;)V

    .line 191
    :goto_1
    return-void

    .line 162
    :catch_0
    move-exception v0

    .line 163
    invoke-static {}, Lcom/flurry/sdk/cf;->a()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to decode sdk log response: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v3, v0}, Lcom/flurry/sdk/gd;->a(ILjava/lang/String;Ljava/lang/String;)V

    :cond_1
    move-object v0, v1

    goto :goto_0

    .line 183
    :cond_2
    if-eqz v0, :cond_3

    .line 184
    iget-object v0, v0, Lcom/flurry/android/impl/ads/protocol/v13/SdkLogResponse;->errors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 185
    const/4 v2, 0x6

    iget-object v3, p0, Lcom/flurry/sdk/cf$1;->c:Lcom/flurry/sdk/cf;

    invoke-static {v3}, Lcom/flurry/sdk/cf;->d(Lcom/flurry/sdk/cf;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcom/flurry/sdk/gd;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 189
    :cond_3
    iget-object v0, p0, Lcom/flurry/sdk/cf$1;->c:Lcom/flurry/sdk/cf;

    iget-object v1, p0, Lcom/flurry/sdk/cf$1;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/flurry/sdk/cf$1;->b:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/cf;->a(Lcom/flurry/sdk/cf;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method
